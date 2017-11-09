- dashboard: product_analysis
  title: Product Analysis
  layout: newspaper
  description: This is the description of the dashboard
  elements:
  - title: 10 Most Expensive Men Products
    name: 10 Most Expensive Men Products
    model: looker_test
    explore: products
    type: table
    fields:
    - products.category
    - products.item_name
    - products.retail_price
    - products.department
    filters:
      products.department: Men
    sorts:
    - products.retail_price desc
    limit: 10
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - products.department
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    row: 12
    col: 11
    width: 8
    height: 6
  - title: Count of Products by Department
    name: Count of Products by Department
    model: looker_test
    explore: products
    type: looker_pie
    fields:
    - products.department
    - products.count
    sorts:
    - products.count desc
    limit: 500
    value_labels: legend
    label_type: labVal
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    inner_radius: 66
    colors: 'palette: Santa Cruz'
    series_colors:
      Women: "#ed6168"
      Men: "#5245ed"
    listen:
      Select Department: products.department
    note_state: collapsed
    note_display: above
    note_text: This where the Notes are for this chart.
    row: 5
    col: 3
    width: 16
    height: 7
  - title: 10 Most Expensive Women Products
    name: 10 Most Expensive Women Products
    model: looker_test
    explore: products
    type: table
    fields:
    - products.category
    - products.item_name
    - products.retail_price
    - products.department
    filters:
      products.department: Women
    sorts:
    - products.retail_price desc
    limit: 10
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields:
    - products.department
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    row: 12
    col: 3
    width: 8
    height: 6
  - name: Welcome to
    type: text
    title_text: "Welcome to..."
    subtitle_text: The Product Analysis Dashboard!
    body_text: |-
      Welcome to the Product Analysis Dashboard.

      This is a very nice dashboard that gives you very nice insights and this is very good for you.
    row: 0
    col: 3
    width: 5
    height: 5
  filters:
  - name: Select Department
    title: Select Department
    type: field_filter
    default_value: ''
    model: looker_test
    explore: products
    field: products.department
    listens_to_filters: []
    allow_multiple_values: true
    required: false
