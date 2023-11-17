
- dashboard: google_cloud_security_findings
  title: Google Cloud Security Findings*
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: FtWpnVuXcABQI8lUUtom6L
  elements:
  - title: Public IP Addresses
    name: Public IP Addresses
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: '"PUBLIC_IP_ADDRESS"'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 2
    col: 0
    width: 6
    height: 2
  - title: Open Firewall
    name: Open Firewall
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: '"OPEN_FIREWALL"'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 4
    col: 0
    width: 6
    height: 2
  - title: Primitive Roles Used
    name: Primitive Roles Used
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: '"PRIMITIVE_ROLES_USED"'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 2, background_color: "#EA4335",
        font_color: black, color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 4
    col: 18
    width: 6
    height: 2
  - title: IAM Anomalous Grant
    name: IAM Anomalous Grant
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: 'Persistence: IAM Anomalous Grant'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 4
    col: 12
    width: 6
    height: 2
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":" Infrastructure Security","fontSize":"16pt","backgroundColor":"transparent","color":"rgb(0,
      0, 0)"}],"id":1700075001994,"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 0
    width: 12
    height: 2
  - name: " (Copy)"
    type: text
    title_text: " (Copy)"
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"Identity Security","fontSize":"16pt","backgroundColor":"transparent","color":"rgb(0,
      0, 0)"}],"id":1700075001994,"align":"center"}]'
    rich_content_json: '{"format":"slate"}'
    row: 0
    col: 12
    width: 12
    height: 2
  - title: SSH keys allowed
    name: SSH keys allowed
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: 'Persistence: Project SSH Key Added'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 4
    col: 6
    width: 6
    height: 2
  - title: Findings last 14 days*
    name: Findings last 14 days*
    model: scc_log_findings
    explore: findings
    type: looker_column
    fields: [findings.count, findings.finding__category, findings.event_time_date]
    pivots: [findings.finding__category]
    fill_fields: [findings.event_time_date]
    filters:
      findings.finding__category: '"PUBLIC_IP_ADDRESS","OPEN_FIREWALL","PRIMITIVE_ROLES_USED",Persistence:
        IAM Anomalous Grant,"UNUSED_IAM_ROLE",Persistence: Project SSH Key Added'
    sorts: [findings.finding__category, findings.event_time_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 5b121cce-cf79-457c-a52a-9162dc174766
      palette_id: 55dee055-18cf-4472-9669-469322a6f264
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    defaults_version: 1
    note_state: collapsed
    note_display: below
    note_text: To select only one category, hold Option/Alt and click on category
      in the legend
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 10
    col: 0
    width: 24
    height: 10
  - name: " (Copy 2)"
    type: text
    title_text: " (Copy 2)"
    subtitle_text: ''
    body_text: '[{"type":"p","children":[{"text":"Application Security","fontSize":"16pt","backgroundColor":"transparent","color":"rgb(0,
      0, 0)"}],"align":"center","id":1700233657004}]'
    rich_content_json: '{"format":"slate"}'
    row: 6
    col: 0
    width: 24
    height: 2
  - title: Added binary & Library**
    name: Added binary & Library**
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: 'Persistence: IAM Anomalous Grant'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 8
    col: 0
    width: 12
    height: 2
  - title: SSH & HTTP firewall**
    name: SSH & HTTP firewall**
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: 'Persistence: IAM Anomalous Grant'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 8
    col: 12
    width: 12
    height: 2
  - title: User managed service account key
    name: User managed service account key
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: '"USER_MANAGED_SERVICE_ACCOUNT_KEY"'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 2, background_color: "#EA4335",
        font_color: black, color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 2
    col: 12
    width: 6
    height: 2
  - title: Public Bucket
    name: Public Bucket
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: '"PUBLIC_BUCKET_ACL"'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 2
    col: 6
    width: 6
    height: 2
  - title: Unused IAM Role
    name: Unused IAM Role
    model: scc_log_findings
    explore: findings
    type: single_value
    fields: [findings.count]
    filters:
      findings.finding__category: '"UNUSED_IAM_ROLE"'
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    conditional_formatting: [{type: greater than, value: 2, background_color: "#EA4335",
        font_color: black, color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Event Date*: findings.event_time_date
      Finding State*: findings.finding__state
    row: 2
    col: 18
    width: 6
    height: 2
  filters:
  - name: Event Date*
    title: Event Date*
    type: field_filter
    default_value: 14 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: scc_log_findings
    explore: findings
    listens_to_filters: []
    field: findings.event_time_date
  - name: Finding State*
    title: Finding State*
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: scc_log_findings
    explore: findings
    listens_to_filters: []
    field: findings.finding__state
