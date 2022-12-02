- dashboard: adobetest
  title: Adobetest
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  elements:
  - name: Total Unique Visits
    title: Total Unique Visits
    model: chrisr_sf
    explore: order_items
    type: single_value
    fields: [order_items.id, order_items.count_unique_visitors]
    limit: 500
    column_limit: 50
    show_single_value_title: true
    single_value_title: Unique Visits
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen:
    note_state: collapsed
    note_display: hover
    note_text: Description - Total Unique Visits
    row: 0
    col: 0
    width: 4
    height: 3
  - title: Total_visits
    name: Total_visits
    model: chrisr_sf
    explore: order_items
    type: single_value
    fields: order_items.total_visits
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_single_value_title: true
    single_value_title: Visits
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    listen:
    note_state: collapsed
    note_display: hover
    note_text: Description - Total Visits
    row: 0
    col: 4
    width: 4
    height: 3
  - title: Cost per Unique Visit
    name: Cost per Unique Visit
    model: chrisr_sf
    explore: order_items
    type: single_value
    fields: [order_items.id, order_items.cost_per_unique_visit]
    limit: 500
    query_timezone: America/Los_Angeles
    show_single_value_title: true
    single_value_title: Cost per Unique Visit
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - costs.cost
    - sessions.count_unique_visitors
    series_types: {}
    listen:
    note_state: collapsed
    note_display: hover
    note_text: Description - Cost per Unique Visit
    row: 3
    col: 0
    width: 4
    height: 3
  - title: Cost per Visit
    name: Cost per Visit
    model: chrisr_sf
    explore: order_items
    type: single_value
    fields: [order_items.id, order_items.cost_per_visit]
    sorts: [order_items.total_sale_price desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    show_single_value_title: true
    single_value_title: Cost per Visit
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - costs.cost
    series_types: {}
    listen:
    note_state: collapsed
    note_display: hover
    note_text: Description - Cost per Visit
    row: 3
    col: 4
    width: 4
    height: 3
  - title: Tile6
    name: Tile6
    model: chrisr_sf
    explore: order_items
    type: single_value
    fields: [order_items.id, order_items.cost_per_unique_visit1]
    limit: 500
    query_timezone: America/Los_Angeles
    show_single_value_title: true
    single_value_title: Revenue per Unique Visit
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - costs.cost
    - sessions.count_unique_visitors
    series_types: {}
    listen:
    note_state: collapsed
    note_display: hover
    note_text: Description - Cost per Unique Visit
    row: 6
    col: 0
    width: 4
    height: 3
  - title: tile5
    name: tile5
    model: chrisr_sf
    explore: order_items
    type: single_value
    fields: [order_items.id, order_items.cost_per_unique_visit2]
    sorts: [order_items.total_sale_price desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    show_single_value_title: true
    single_value_title: Rev per Visit
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields:
    - costs.cost
    series_types: {}
    listen:
    note_state: collapsed
    note_display: hover
    note_text: Description - Cost per Visit
    row: 6
    col: 4
    width: 4
    height: 3
