module QualityChartsHelpers
  BUGS_DASHBOARD_ID = 576726
  BUGS_OPEN_VS_CLOSED_RATE_CHART_ID = 8789700
  DEFAULT_DATE_RANGE = 730
  DEFAULT_SEVERITIES = %w[severity\ 1 severity\ 2].freeze
  FILTER_TYPE_CONDITIONS = {
    "dev" => {
      "development_section" => "development_section",
      "group" => "team_group",
      "stage" => "stage"
    },
    "other" => {
      "development_section" => "development_section",
      "group" => "team_group",
      "stage" => "stage"
    }
  }.freeze

  # Returns the filter type to map between the different filter values in the dashboards
  def filter_type_for(dashboard = 'dev', filter_name = 'other')
    filtered_dashboard = dashboard == 'dev' ? dashboard : 'other'
    FILTER_TYPE_CONDITIONS[filtered_dashboard][filter_name]
  end

  # This method helps build the right correct values for the embedded dashboards like https://about.gitlab.com/handbook/engineering/development/performance-indicators/ops/
  def filter_value_for(dashboard, org_level, value)
    case org_level
    when 'development_section', 'group'
      value.downcase.tr("_", " ")
    when 'stage'
      filter_stages_yml(dashboard, value)
    else
      "nothing org:#{org_level} dash:#{dashboard} value:#{value}"
    end
  end

  def bugs_open_vs_closed_rate_params(date_range: DEFAULT_DATE_RANGE, development_section: nil, stage: nil, group: nil, severities: DEFAULT_SEVERITIES)
    params = {
      dashboard: BUGS_DASHBOARD_ID,
      chart: BUGS_OPEN_VS_CLOSED_RATE_CHART_ID,
      embed: 'v2',
      aggregation: 'monthly',
      daterange: { days: date_range }
    }

    params.merge!(build_chart_filters('stage': stage, 'team_group': group, 'issue_severity': severities, 'development_section': development_section))
  end

  private

  ## Accepts hash of sisense filter name to value
  ## Example
  ## { 'stage': 'manage', 'team_group': 'authentication and authorization' }
  def build_chart_filters(config_params)
    config_params.each_with_object(bare_filters) do |(sisense_filter_name, value), filter_hash|
      if value
        filter_hash[:filters] << { name: sisense_filter_name.to_s, value: value }
        filter_hash[:visible] << sisense_filter_name.to_s
      end

      filter_hash
    end
  end

  def bare_filters
    {
      filters: [],
      visible: []
    }
  end

  def filter_stages_yml(dashboard, stage_name)
    stages = data.stages['stages'].find { |key, _| key.to_s == stage_name.downcase }
    dashboard == 'old' ? stages[1]['groups'].map { |key, _| key.downcase.to_s.tr("_", " ") } : stages[0]
  end
end
