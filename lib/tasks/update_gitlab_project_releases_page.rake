#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative "../../app/services/update_releases_service"

namespace :release do
  GITLAB_FOSS_PROJECT_ID = 13083
  GITLAB_EE_PROJECT_ID = 278964

  namespace :ee do
    # gitlab-org/gitlab Releases page: https://gitlab.com/gitlab-org/gitlab/-/releases
    desc "Updates the gitlab-org/gitlab project's Releases page using the release posts found in this project"
    task :update_project_releases_page do |_t, args|
      update_project_releases_page(project_id: GITLAB_EE_PROJECT_ID, is_ee: true)
      puts "✅ Successfully updated all releases. You can view these releases at https://gitlab.com/gitlab-org/gitlab/-/releases."
    end
  end

  namespace :foss do
    # gitlab-org/gitlab-foss Releases page: https://gitlab.com/gitlab-org/gitlab-foss/-/releases
    desc "Updates the gitlab-org/gitlab-foss project's Releases page using the release posts found in this project"
    task :update_project_releases_page do |_t, args|
      update_project_releases_page(project_id: GITLAB_FOSS_PROJECT_ID, is_ee: false)
      puts "✅ Successfully updated all releases. You can view these releases at https://gitlab.com/gitlab-org/gitlab-foss/-/releases."
    end
  end

  def update_project_releases_page(project_id:, is_ee:)
    UpdateReleasesService.new(project_id, ENV['GITLAB_BOT_TOKEN'], is_ee).execute
  end
end
