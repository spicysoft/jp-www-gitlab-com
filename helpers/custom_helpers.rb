require 'open-uri'
require 'nokogiri'
require 'cgi'
require 'openssl'
require 'rest-client'

module CustomHelpers
  def salary_avail
    data.people_group.job_families.sort_by(&:title)
  end

  def current_role_for_salary_calculator
    current_role = salary_avail.detect do |role|
      descriptions = role.description.is_a?(String) ? role.description.split : role.description

      descriptions.detect do |description|
        description.start_with?("/#{File.dirname(current_page.request_path)}")
      end
    end

    current_role&.title
  end

  def no_hiring_countries
    response = RestClient.get('https://comp-calculator.gitlab.net/api//hiring_status/list_no_hiring')
    JSON.parse(response.body).dig('countries')
  rescue RestClient::NotFound, Errno::ECONNREFUSED, RestClient::Exception, OpenSSL::SSL::SSLError
    []
  end

  def current_role_sales?
    url = current_page.request_path
    url.include?('job-families/sales/')
  end

  def icon(icon, cssclass = "", attrs = {})
    width = attrs[:width] || 76
    height = attrs[:height] || 76
    viewbox_width = attrs[:viewbox_width] || width
    viewbox_height = attrs[:viewbox_height] || height
    label = attrs[:label] || ""
    content_tag :svg, viewbox: "0 0 #{viewbox_width} #{viewbox_height}", width: width, height: height, class: cssclass, aria: { label: label }, role: "img" do
      partial "includes/icons/#{icon}.svg"
    end
  end

  def svg_image(icon, cssclass = "", attrs = {})
    data = attrs[:data] || ""
    content_tag :svg, class: cssclass, role: "img", data: data do
      partial icon
    end
  end

  def xml_feed_content(article)
    content = article.body

    content << if article.data.image_title
                 "<img src='#{data.site.url}#{article.data.image_title}' class='webfeedsFeaturedVisual' style='display: none;' />"
               else
                 "<img src='#{data.site.url}#{image_path('default-blog-image.png')}' class='webfeedsFeaturedVisual' style='display: none;' />"
               end

    h(content)
  end

  def markdown(text)
    # Scope parameter is necessary to make Markdown in YAML work properly
    # See: https://github.com/middleman/middleman/issues/653#issuecomment-9954111
    Tilt['markdown'].new { text }.render(scope: self)
  end

  def kramdown(text)
    Kramdown::Document.new(text).to_html
  end

  def team_size
    Gitlab::Homepage.team.members.count(&:person?)
  end

  def open_roles
    data.roles.select(&:open).sort_by(&:title)
  end

  def kpi_list_by_org(org)
    kpis = fetch_performance_indicators_for_org(org).select { |pi| pi.is_key == true }

    partial('includes/performance_indicator_list.erb', locals: { kpis: kpis })
  end

  def color_code_grades(grade)
    color = "green"  if grade.include? 'A'
    color = "green"  if grade.include? 'B'
    color = "orange" if grade.include? 'C'
    color = "red"    if grade.include? 'D'
    color = "red"    if grade.include? 'F'

    "<span style='color:#{color};'>#{grade}</span>"
  end

  def color_code_health(level)
    case level
    when 3
      color = "green"
      text = "Okay"
    when 2
      color = "orange"
      text = "Attention"
    when 1
      color = "red"
      text = "Problem"
    when -1
      color = "purple"
      text = "Confidential"
    else
      color = "gray"
      text = "Unknown"
    end

    "<span style='border-radius:0.2em; font-weight:bold; padding-left:1em; padding-right:1em; color:white; background-color:#{color};'>#{text}</span>"
  end

  def color_code_instrumentation(level)
    case level
    when 3
      color = "green"
      text = "Okay"
    when 2
      color = "orange"
      text = "Attention"
    when 1
      color = "red"
      text = "Problem"
    else
      color = "gray"
      text = "Unknown"
    end

    "<span style='border-radius:0.2em; font-weight:bold; padding-left:1em; padding-right:1em; color:white; background-color:#{color};'>#{text}</span>"
  end

  def key_performance_indicators(orgs)
    kpis = orgs.map { |org| fetch_performance_indicators_for_org(org) }.flatten

    kpis
      .select(&:is_key?)
      .sort_by { |pi| pi.health.level }
      .sort_by { |pi| orgs.index pi.org }
  end

  def performance_indicators_by_maturity_level
    data
      .performance_indicators
      .values
      .flatten
      .sort_by { |pi| pi_maturity_level(pi) }
  end

  def pi_maturity_level(performance_indicator)
    level = 0

    level += 1 if performance_indicator.definition
    level += 1 if performance_indicator.target
    if performance_indicator.public == false && performance_indicator.urls
      level += 1
    elsif performance_indicator.sisense_data
      level += 1
    end

    level
  end

  def pi_maturity_reasons(performance_indicator)
    reasons = []

    reasons.push("Needs a definition") unless performance_indicator.definition
    reasons.push("Needs a target") unless performance_indicator.target
    if performance_indicator.public == false && !performance_indicator.urls
      reasons.push("Needs a url")
    elsif performance_indicator.public == true && !performance_indicator.sisense_data
      reasons.push("Needs Sisense Embed Info")
    end

    reasons
  end

  def color_code_maturity(level)
    color = case level
            when 3
              "green"
            when 2
              "orange"
            when 1
              "red"
            else
              "gray"
            end

    "<span style='border-radius:0.2em; font-weight:bold; padding-left:1em; padding-right:1em; color:white; background-color:#{color};'>Level #{level} of 3</span>"
  end

  def performance_indicators_stage_and_group
    smau_pis = []
    gmau_pis = []
    other_stage_pis = []
    other_group_pis = []

    ["Dev Section", "Enablement Section", "Ops Section", "Sec Section"].each do |section|
      fetch_performance_indicators_for_org(section).each do |pi|
        next unless pi.pi_type.present?

        smau_pis.push(pi) if pi.pi_type.include? 'SMAU'
        gmau_pis.push(pi) if pi.pi_type.include? 'GMAU'
        if pi.pi_type.include? 'SMAC'
          other_stage_pis.push(pi)
        elsif pi.pi_type.include? 'Stage PPI'
          other_stage_pis.push(pi)
        end
        if pi.pi_type.include? 'GMAC'
          other_group_pis.push(pi)
        elsif pi.pi_type.include? 'Group PPI'
          other_group_pis.push(pi)
        end
      end
    end

    partial('includes/performance_indicators_stage_and_group.html.erb', locals: { smau_pis: smau_pis, gmau_pis: gmau_pis, other_stage_pis: other_stage_pis, other_group_pis: other_group_pis })
  end

  def performance_indicators(org)
    kpis = []
    rpis = []

    fetch_performance_indicators_for_org(org).each do |pi|
      if pi.is_key == true
        kpis.push(pi)
      else
        rpis.push(pi)
      end
    end

    partial('includes/performance_indicators.html.erb',
      locals: {
        org: org,
        key_performance_indicators: kpis,
        regular_performance_indicators: rpis
      }
    )
  end

  def fetch_performance_indicators_for_org(org)
    key = org.tr(' ', '_').downcase

    data.performance_indicators.fetch(key, [])
  end

  def mttp_performance_indicator
    performance_indicators = fetch_performance_indicators_for_org('Infrastructure Department')

    performance_indicators.select do |pi|
      pi['name'] == 'Mean Time To Production (MTTP)'
    end.first
  end

  def signed_periscope_url(data)
    # Forks may not have the API key, so just return a placeholder URL
    return 'https://about.gitlab.com/images/press/logo/preview/gitlab-logo-white-preview.png' unless ENV['PERISCOPE_EMBED_API_KEY']

    path = '/api/embedded_dashboard?data=' + CGI.escape(data.to_json)
    signature = OpenSSL::HMAC.hexdigest(OpenSSL::Digest.new('sha256'), ENV['PERISCOPE_EMBED_API_KEY'], path)

    'https://www.periscopedata.com' + path + '&signature=' + signature
  end

  def font_url(current_page)
    fonts = ["Source+Sans+Pro:200,300,400,500,600,700"]

    if current_page.data.extra_font
      fonts = fonts.concat current_page.data.extra_font
    end
    fonts = fonts.join("|")

    "//fonts.googleapis.com/css?family=#{fonts}"
  end

  def highlight_active_nav_link(link_text, url, options = {})
    options[:class] ||= ""
    options[:class] << " active" if url == current_page.url
    link_to(link_text, url, options)
  end

  def full_url(current_page)
    "#{data.site.url}#{current_page.url}"
  end

  def current_version
    ReleaseList.new.release_posts.first.version
  end

  def copy_btn_options(copy_text, tooltip_text = nil, button_class = nil)
    tooltip_text = 'Copy to clipboard' if tooltip_text.nil?
    button_class = 'copy-btn js-copy-btn' if button_class.nil?

    {
      class: "btn #{button_class}", type: 'button',
      title: tooltip_text, 'aria-label' => tooltip_text,
      data: {
        'clipboard-text' => copy_text,
        toggle: 'tooltip', placement: 'top'
      }
    }
  end

  def ci_environment?
    !!ENV['CI_SERVER']
  end

  def production_environment?
    ENV['CI_COMMIT_REF_NAME'] == 'master'
  end

  def add_extra_css(*files)
    current_page.data.extra_css ||= []
    current_page.data.extra_css |= files
  end

  def add_extra_js(*files)
    current_page.data.extra_js ||= []
    current_page.data.extra_js |= files
  end

  def heroes_size
    data.heroes.count { |entry| entry['type'] == 'person' }
  end

  def heroes_alumni_size
    data.heroes_alumni.count { |entry| entry['type'] == 'person' }
  end

  def handbook_product_page?(relative_path)
    relative_path.to_s.include? 'handbook/product/'
  end

  def web_ide_url(site, monorepo_site_path_fragment, relative_path)
    "#{site.instance}-/ide/project/#{site.path}edit/master/-/#{monorepo_site_path_fragment}source/#{relative_path}"
  end

  def blob_editor_url(site, monorepo_site_path_fragment, relative_path)
    "#{site.repo}blob/master/#{monorepo_site_path_fragment}source/#{relative_path}"
  end

  # rubocop:disable Metrics/AbcSize
  def devops_diagram(stages)
    manage = '#f1f1f1'
    secure = '#f1f1f1'
    create = '#dddddd'
    verify = '#dfdfdf'
    package = '#e2e2e2'
    release = '#e4e4e4'
    configure = '#e6e6e6'
    monitor = '#e8e8e8'
    protect = '#eaeaea'
    plan = '#dbdbdb'
    manage = '#fdbc60' if stages.any? { |x| %w[Manage All].include?(x) }
    secure = '#fdbc60' if stages.any? { |x| %w[Secure All].include?(x) }
    create = '#e44d2a' if stages.any? { |x| %w[Create All].include?(x) }
    verify = '#e95f29' if stages.any? { |x| %w[Verify All].include?(x) }
    package = '#ed6c28' if stages.any? { |x| %w[Package All].include?(x) }
    release = '#f07727' if stages.any? { |x| %w[Release All].include?(x) }
    configure = '#f38327' if stages.any? { |x| %w[Configure All].include?(x) }
    protect = '#f68d27' if stages.any? { |x| %w[Protect All].include?(x) }
    monitor = '#f99726' if stages.any? { |x| %w[Monitor All].include?(x) }
    plan = '#e1432a' if stages.any? { |x| %w[Plan All].include?(x) }

    diagram = '<svg viewBox="0 0 1100 500" xmlns="http://www.w3.org/2000/svg">
    <path fill="' + manage + '" d="m17 0-17 17 17 17h1066l17-17-17-17"/>
    <path fill="' + secure + '" d="m17 466-17 17 17 17h1066l17-17-17-17"/>
    <path fill="' + create + '" d="m250 90h-90c-74 0-148 66-160 140l30 30 30-30c7.5-45 55-80 100-80h90l-27-27c-3-3-3-3 0-6"/>
    <path fill="' + verify + '" d="m0 250c0 79 81 160 160 160h90l30-30-30-30h-90c-49.5 0-100-50.5-100-100l-27 27c-3 3-3 3-6 0"/>
    <path fill="' + package + '" d="m270 410h90c41 0 81-11 110-40l90-90v-42.4h-42.4l-90 90c-17.6 17.6-42.7 22.4-67.6 22.4h-90l27 27c3 3 3 3 0 6"/>
    <path fill="' + release + '" d="m567.1 272.9 100-100c16.6-16.6 39.5-22.9 62.9-22.9h100l30-30-30-30h-100c-39.5 0-77.4 12.6-105.3 40.5l-100 100h38.2c4.2 0 4.2 0 4.2 4.2"/>
    <path fill="' + configure + '" d="m850 90h90c74 0 148 66 160 140l-30 30-30-30c-7.5-45-55-80-100-80h-90l27-27c3-3 3-3 0-6"/>
    <path fill="' + protect + '" d="m1100 250c0 79-81 160-160 160h-90l-30-30 30-30h90c49.5 0 100-50.5 100-100l27 27c3 3 3 3 6 0"/>
    <path fill="' + monitor + '" d="m830 410h-90c-41 0-81-11-110-40l-50-50v-42.4h42.4l50 50c17.6 17.6 44.5 22.4 67.6 22.4h90l-27 27c-3 3-3 3 0 6"/>
    <path fill="' + plan + '" d="m492.9 232.9-60-60c-16.6-16.6-39.5-22.9-62.9-22.9h-100l-30-30 30-30h100c39.5 0 77.4 12.6 105.3 40.5l60 60h-38.2c-4.2 0-4.2 0-4.2 4.2"/>
    <text class="a" x="50%" y="25" text-anchor="middle">MANAGE</text>
    <text class="a" x="50%" y="491" text-anchor="middle">SECURE</text>
    <text class="a" transform="rotate(45,465.1,178.3)" x="465.1" y="178.3" text-anchor="end">PLAN</text>
    <text class="a" transform="rotate(315,594.9,218.3)" x="594.9" y="218.3">RELEASE</text>
    <text class="a" transform="rotate(315,526.6,286.6)" x="526.6" y="286.6" text-anchor="end">PACKAGE</text>
    <text class="b" x="260" y="270" text-anchor="middle">DEV</text>
    <text class="b" x="840" y="270" text-anchor="middle">OPS</text>
    <def>
    <path id="a" d="M 52.67,193.33 C 77,153.18 118.64,129.27 159,129"/>
    <path id="b" d="m43 318.44c19.2 33.61 72.27 72.11 116.25 70.81"/>
    <path id="c" d="m978.33 138c36 12.33 78 55.33 80.34 90.67"/>
    <path id="d" d="m987 377.67c50.67-17.67 91.33-79.67 91.67-126.67"/>
    <path id="e" d="m613.4 326.6 30 30c25.4 25.4 60.7 34.4 96.6 34.4"/>
    </def>
    <text class="a"><textPath href="#a">CREATE</textPath></text>
    <text class="a"><textPath href="#b">VERIFY</textPath></text>
    <text class="a"><textPath href="#c">CONFIGURE</textPath></text>
    <text class="a"><textPath href="#d">PROTECT</textPath></text>
    <text class="a"><textPath href="#e">MONITOR</textPath></text>
    <style><![CDATA[.a {font: bold 24px Source Sans Pro,sans-serif;fill: white;} .b {font: bold 60px Source Sans Pro,sans-serif;fill: black;}]]></style>
    </svg>'

    if stages.include? 'All'
      diagram
    else
      content = '{::nomarkdown}
      <style>'
      content += if stages.length > 3
                   '.diagramwrapper *{box-sizing:border-box}.diagramwrapper{width:100%;display:flex}.diagramwrapper .box{width:calc(100% - 390px);padding:10px;border:#999 1px solid;display:flex;filter:drop-shadow(0 2px 4px rgba(0, 0, 0, .5));background-color:#fff}.diagramwrapper .box svg{width:100%}.diagramwrapper .circle{width:50px;height:50px;margin-right:15px;border:#999 1px solid;border-radius:50%;display:inline-block;filter:drop-shadow(0 2px 4px rgba(0, 0, 0, .5));background-color:#fff;padding:0}.diagramwrapper .circle svg{fill:#524684;width:30px;margin:10px}.diagramwrapper .stages{display:flex;width:360px;margin-left:30px;flex-wrap:wrap}.diagramwrapper .stage{width:180px;display:flex;margin:auto 0}.diagramwrapper .stagename{display:inline-block;font-family:Source Sans Pro,sans-serif;font-weight:bold;font-size:20px;line-height:60px}'
                 else
                   '.diagramwrapper *{box-sizing:border-box}.diagramwrapper{width:100%;display:flex}.diagramwrapper .box{width:calc(100% - 240px);padding:10px;border:#999 1px solid;display:flex;filter:drop-shadow(0 2px 4px rgba(0, 0, 0, .5));background-color:#fff}.diagramwrapper .box svg{width:100%}.diagramwrapper .circle{width:80px;height:80px;margin-right:20px;border:#999 1px solid;border-radius:50%;display:inline-block;filter:drop-shadow(0 2px 4px rgba(0, 0, 0, .5));background-color:#fff;padding:0}.diagramwrapper .circle svg{fill:#524684;width:50px;margin:15px}.diagramwrapper .stages{display:flex;width:210px;margin-left:30px;flex-wrap:wrap}.diagramwrapper .stage{width:210px;display:flex;margin:auto 0}.diagramwrapper .stagename{display:inline-block;font-family:Source Sans Pro,sans-serif;font-weight:bold;font-size:24px;line-height:80px}'
                 end
      content += '</style><div class="diagramwrapper"><div class="box">' + diagram + '</div><div class="stages">'

      stages.each do |stage|
        content += '<div class="stage"><div class="circle">'
        fh = open "../../source/includes/icons/sdlc-icons/#{stage.downcase}.svg"
        content += fh.read
        fh.close
        content += '</div><div class="stagename">' + stage + '</div></div>'
      end

      content += '</div></div>
      {:/}'
      content
    end
  end
  # rubocop:enable Metrics/AbcSize
end
