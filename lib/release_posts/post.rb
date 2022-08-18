# frozen_string_literal: true

require 'yaml'
require 'fileutils'
require 'rest-client'
require_relative 'milestones'

module ReleasePosts
  class Post
    include Helpers
    include Milestones

    def initialize
      assert_release_branch!

      @release = git_current_branch.match('^release-(\d+-\d+)$').captures[0].tr('-', '_')
      @release_data_dir = File.join(git_repo_path, 'data', 'release_posts', @release)
      @release_img_dir = File.join(git_repo_path, 'source', 'images', @release)
    end

    def assemble
      # Move unreleased items to release directory
      FileUtils.mkdir_p @release_data_dir
      Dir.glob("data/release_posts/unreleased/*.{yaml,yml}") do |filepath|
        git_mv(filepath, @release_data_dir)
      end

      # Move unrelease images to the release directory
      FileUtils.mkdir_p @release_img_dir
      Dir.glob("source/images/unreleased/*.{png,jpg,jpeg,gif}") do |filepath|
        git_mv(filepath, @release_img_dir)
      end

      Dir.glob(File.join(@release_data_dir, "*.{yaml,yml}")) do |filepath|
        file = YAML.load_file(filepath)

        # Update image_urls
        content_blocks(file).each { |block| update_image_url(filepath, block) }
      end

      update_deprecations

      git_commit("Added new release post content")
    end

    private

    def assert_release_branch!
      return if git_current_branch =~ /^release-\d+-\d+$/

      fail_with "Create or checkout a release branch first!"
    end

    def content_blocks(content)
      [
        content.dig('features', 'top'),
        content.dig('features', 'primary'),
        content.dig('features', 'secondary'),
        content.dig('deprecation')
      ].compact.reduce([], :|)
    end

    def update_deprecations
      deprecation_files = []
      page = 1
      retrieved_files = nil
      # Get a list of all files in the /data/deprecations directory.  Iterate through multiple pages if needed and remove the templates directory.
      until retrieved_files == []
        response = RestClient.get('https://gitlab.com/api/v4/projects/278964/repository/tree?path=data/deprecations&per_page=100&page=' + page.to_s)
        retrieved_files = JSON.parse(response.body)
        retrieved_files.each do |retrieved_file|
          if retrieved_file['type'] == "blob" && retrieved_file['name'] != "templates"
            deprecation_files << ERB::Util.url_encode(retrieved_file['path'])
          end
        end
        page += 1
      end

      # Create a new Hash with the announcement milestone as the key.  Read all /data/deprecations files into an array associated with the correct announcement milestone
      deprecations = {}
      deprecation_files.each do |fp|
        response = RestClient.get('https://gitlab.com/api/v4/projects/278964/repository/files/' + fp + '?ref=master')
        contents = YAML.safe_load(Base64.decode64(JSON.parse(response.body)['content']))
        contents.each do |content|
          if content['announcement_milestone'] && Gem::Version.new(content['announcement_milestone']) > Gem::Version.new(14.3)
            deprecations[content['announcement_milestone']] = [] unless deprecations[content['announcement_milestone']] # initialize empty array unless the array already exists
            deprecations[content['announcement_milestone']] << content
          end
        end
      end

      # For each announcement milestone, transform the deprecations array to match the release post format and write out a deprecations.yml file in the appropriate directory
      deprecations.each do |milestone, deprecations_array|
        contents = {}
        contents["deprecations"] = []
        deprecations_array.each do |deprecation|
          deprecation_item = {}
          deprecation_item["feature_name"] = deprecation['name']
          deprecation_item["due"] = milestone_to_date(deprecation['removal_milestone'])
          deprecation_item["description"] = deprecation['body']
          contents["deprecations"] << deprecation_item
        end
        filepath = File.expand_path("data/release_posts/" + milestone.tr(".", "_") + "/deprecations.yml", "#{__dir__}/../..")
        File.write(filepath, contents.to_yaml)
        git_add(filepath)
      end
    end

    def update_image_url(filepath, block)
      return if block['image_url'].nil? || File.exist?(File.join('source', block['image_url']))

      guessed_image_url = block['image_url'].gsub('/unreleased/', "/#{@release}/")

      if File.exist?(File.join('source', guessed_image_url))
        replace(block['image_url'], guessed_image_url, filepath)
        git_add(filepath)
        return
      end

      puts "#{block['image_url']} is broken"
    end
  end
end
