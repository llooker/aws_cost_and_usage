- dashboard: aws_cost_and_usage_overview
  title: AWS Cost and Usage Overview
  layout: newspaper
  elements:
  - name: Total Cost Latest Week
    title: Total Cost Latest Week
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: single_value
    fields:
    - cost_and_usage.total_blended_cost
    - cost_and_usage.usage_start_week
    fill_fields:
    - cost_and_usage.usage_start_week
    sorts:
    - cost_and_usage.usage_start_week desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_last_week
      label: Cost Last Week
      expression: offset(${cost_and_usage.total_blended_cost},1)
      value_format:
      value_format_name: usd_0
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    comparison_label: Percent of Cost Prior Week
    single_value_title: Total Cost Latest Week
    row: 6
    col: 0
    width: 8
    height: 4
  - name: Total Cost Latest Month
    title: Total Cost Latest Month
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: single_value
    fields:
    - cost_and_usage.total_blended_cost
    - cost_and_usage.usage_start_month
    fill_fields:
    - cost_and_usage.usage_start_month
    sorts:
    - cost_and_usage.usage_start_month desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_last_week
      label: Cost Last Week
      expression: offset(${cost_and_usage.total_blended_cost},1)
      value_format:
      value_format_name: usd_0
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    comparison_label: Percent of Cost Prior Month
    single_value_title: Total Cost Latest Month
    row: 6
    col: 8
    width: 8
    height: 4
  - name: Total Cost YTD
    title: Total Cost YTD
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: single_value
    fields:
    - cost_and_usage.total_blended_cost
    - cost_and_usage.usage_start_year
    fill_fields:
    - cost_and_usage.usage_start_year
    sorts:
    - cost_and_usage.usage_start_year desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_last_year
      label: Cost Last Year
      expression: offset(${cost_and_usage.total_blended_cost},1)
      value_format:
      value_format_name: usd_0
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    comparison_label: Percent of Cost Prior Year (Entire Year)
    single_value_title: Total Cost (Year to Date)
    row: 6
    col: 16
    width: 8
    height: 4
  - name: Reserved EC2 Cost Latest Month
    title: Reserved EC2 Cost Latest Month
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: single_value
    fields:
    - cost_and_usage.EC2_blended_cost
    - cost_and_usage.usage_start_month
    fill_fields:
    - cost_and_usage.usage_start_month
    filters:
      cost_and_usage.ri_line_item: RI Line Item
    sorts:
    - cost_and_usage.usage_start_month desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_last_month
      label: Cost Last Month
      expression: offset(${cost_and_usage.EC2_blended_cost},1)
      value_format:
      value_format_name: usd_0
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    single_value_title: Reserved EC2 Cost Latest Month
    comparison_label: Percent of Cost Prior Month
    row: 2
    col: 0
    width: 8
    height: 4
  - name: Non Reserved EC2 Cost Latest Month
    title: Non Reserved EC2 Cost Latest Month
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: single_value
    fields:
    - cost_and_usage.EC2_blended_cost
    - cost_and_usage.usage_start_month
    fill_fields:
    - cost_and_usage.usage_start_month
    filters:
      cost_and_usage.ri_line_item: Non RI Line Item
    sorts:
    - cost_and_usage.usage_start_month desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_last_month
      label: Cost Last Month
      expression: offset(${cost_and_usage.EC2_blended_cost},1)
      value_format:
      value_format_name: usd_0
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    single_value_title: Non Reserved EC2 Cost Latest Month
    comparison_label: Percent of Cost Prior Month
    row: 2
    col: 8
    width: 8
    height: 4
  - name: Total EC2 Cost This Month
    title: Total EC2 Cost This Month
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: single_value
    fields:
    - cost_and_usage.EC2_blended_cost
    - cost_and_usage.usage_start_month
    fill_fields:
    - cost_and_usage.usage_start_month
    sorts:
    - cost_and_usage.usage_start_month desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: cost_last_month
      label: Cost Last Month
      expression: offset(${cost_and_usage.EC2_blended_cost},1)
      value_format:
      value_format_name: usd_0
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    single_value_title: Total EC2 Cost Latest Month
    comparison_label: Percent of Cost Prior Month
    row: 2
    col: 16
    width: 8
    height: 4
  - name: Total Cost by Reservation Type
    title: Total Cost by Reservation Type
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: looker_column
    fields:
    - cost_and_usage.ri_line_item
    - cost_and_usage.total_blended_cost
    - cost_and_usage.usage_start_month
    pivots:
    - cost_and_usage.ri_line_item
    fill_fields:
    - cost_and_usage.usage_start_month
    sorts:
    - cost_and_usage.total_blended_cost desc 0
    - cost_and_usage.ri_line_item
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    colors:
    - "#1D98D3"
    - "#3B4260"
    - "#39A736"
    - "#F3BF0E"
    - "#E57200"
    - "#5DCCCC"
    - "#7e64e0"
    - "#F663D6"
    - "#603535"
    - "#A5C740"
    - "#B54B4B"
    - "#B1B0B0"
    series_colors:
      Non RI Line Item - cost_and_usage.total_blended_cost: "#39A736"
    row: 16
    col: 0
    width: 12
    height: 8
  - name: Total Cost and RI Efficiency
    title: Total Cost and RI Efficiency
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: looker_column
    fields:
    - cost_and_usage.total_blended_cost
    - cost_and_usage.total_reserved_blended_cost
    - cost_and_usage.total_non_reserved_blended_cost
    - cost_and_usage.usage_start_month
    fill_fields:
    - cost_and_usage.usage_start_month
    sorts:
    - cost_and_usage.total_blended_cost desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_of_spend_on_ris
      label: Percent of Spend on RI's
      expression: "${cost_and_usage.total_reserved_blended_cost}/${cost_and_usage.total_blended_cost}"
      value_format:
      value_format_name: percent_0
    - table_calculation: percent_of_spend_on_non_ris
      label: Percent of Spend on Non-RIs
      expression: "${cost_and_usage.total_non_reserved_blended_cost}/${total_blended_cost}"
      value_format:
      value_format_name: percent_0
    - table_calculation: total_blended_cost
      label: Total Blended Cost
      expression: "${cost_and_usage.total_blended_cost}"
      value_format:
      value_format_name: usd_0
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    colors:
    - "#1D98D3"
    - "#3B4260"
    - "#39A736"
    - "#F3BF0E"
    - "#E57200"
    - "#5DCCCC"
    - "#7e64e0"
    - "#F663D6"
    - "#603535"
    - "#A5C740"
    - "#B54B4B"
    - "#B1B0B0"
    series_colors:
      Non RI Line Item - cost_and_usage.total_blended_cost: "#39A736"
      total_blended_cost: "#3B4260"
      percent_of_spend_on_ris: "#39A736"
      percent_of_spend_on_non_ris: "#B54B4B"
    column_spacing_ratio:
    hidden_fields:
    - cost_and_usage.total_blended_cost
    - cost_and_usage.total_reserved_blended_cost
    - cost_and_usage.total_non_reserved_blended_cost
    series_types:
      percent_of_spend_on_ris: line
      percent_of_spend_on_non_ris: line
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_blended_cost
        name: Total Blended Cost
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: percent_of_spend_on_non_ris
        name: Percent of Spend on Non-RIs
      - id: percent_of_spend_on_ris
        name: Percent of Spend on RI's
    row: 16
    col: 12
    width: 12
    height: 8
  - name: Total EC2 Cost by Reservation Type
    title: Total EC2 Cost by Reservation Type
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: looker_column
    fields:
    - cost_and_usage.usage_start_month
    - cost_and_usage.EC2_blended_cost
    - cost_and_usage.ri_line_item
    pivots:
    - cost_and_usage.ri_line_item
    fill_fields:
    - cost_and_usage.usage_start_month
    sorts:
    - cost_and_usage.ri_line_item
    - cost_and_usage.usage_start_month desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    colors:
    - "#1D98D3"
    - "#3B4260"
    - "#39A736"
    - "#F3BF0E"
    - "#E57200"
    - "#5DCCCC"
    - "#7e64e0"
    - "#F663D6"
    - "#603535"
    - "#A5C740"
    - "#B54B4B"
    - "#B1B0B0"
    series_colors:
      Non RI Line Item - cost_and_usage.total_blended_cost: "#39A736"
      Non RI Line Item - cost_and_usage.EC2_blended_cost: "#39A736"
    row: 24
    col: 0
    width: 12
    height: 8
  - name: EC2 Cost and RI Efficiency
    title: EC2 Cost and RI Efficiency
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: looker_column
    fields:
    - cost_and_usage.usage_start_month
    - cost_and_usage.EC2_blended_cost
    - cost_and_usage.EC2_reserved_blended_cost
    - cost_and_usage.EC2_non_reserved_blended_cost
    fill_fields:
    - cost_and_usage.usage_start_month
    sorts:
    - cost_and_usage.usage_start_month
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: percent_of_ec2_cost_reserved
      label: Percent of EC2 Cost - Reserved
      expression: "${cost_and_usage.EC2_reserved_blended_cost}/${cost_and_usage.EC2_blended_cost}"
      value_format:
      value_format_name: percent_0
    - table_calculation: percent_of_ec2_cost_non_reserved
      label: Percent of EC2 Cost - Non Reserved
      expression: "${cost_and_usage.EC2_non_reserved_blended_cost}/${cost_and_usage.EC2_blended_cost}"
      value_format:
      value_format_name: percent_0
    - table_calculation: total_ec2_blended_cost
      label: Total EC2 Blended Cost
      expression: "${cost_and_usage.EC2_blended_cost}"
      value_format:
      value_format_name: usd_0
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    colors:
    - "#1D98D3"
    - "#3B4260"
    - "#39A736"
    - "#F3BF0E"
    - "#E57200"
    - "#5DCCCC"
    - "#7e64e0"
    - "#F663D6"
    - "#603535"
    - "#A5C740"
    - "#B54B4B"
    - "#B1B0B0"
    series_colors:
      Non RI Line Item - cost_and_usage.total_blended_cost: "#39A736"
      total_blended_cost: "#3B4260"
      percent_of_spend_on_ris: "#39A736"
      percent_of_spend_on_non_ris: "#B54B4B"
      total_ec2_blended_cost: "#3B4260"
      percent_of_ec2_cost_non_reserved: "#B54B4B"
    hidden_fields:
    - cost_and_usage.EC2_blended_cost
    - cost_and_usage.EC2_reserved_blended_cost
    - cost_and_usage.EC2_non_reserved_blended_cost
    series_types:
      percent_of_spend_on_ris: line
      percent_of_spend_on_non_ris: line
      percent_of_ec2_cost_reserved: line
      percent_of_ec2_cost_non_reserved: line
    y_axes:
    - label: ''
      maxValue:
      minValue:
      orientation: left
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_ec2_blended_cost
        name: Total EC2 Blended Cost
    - label:
      maxValue:
      minValue:
      orientation: right
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: percent_of_ec2_cost_non_reserved
        name: Percent of EC2 Cost - Non Reserved
      - id: percent_of_ec2_cost_reserved
        name: Percent of EC2 Cost - Reserved
    row: 24
    col: 12
    width: 12
    height: 8
  - name: Most Costly Services
    title: Most Costly Services
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: looker_bar
    fields:
    - cost_and_usage.product_code
    - cost_and_usage.average_blended_cost_per_month
    - cost_and_usage.total_blended_cost
    - cost_and_usage.total_reserved_blended_cost
    sorts:
    - cost_and_usage.total_blended_cost desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: reservation_efficiency
      label: Reservation Efficiency (%)
      expression: "${cost_and_usage.total_reserved_blended_cost}/${cost_and_usage.total_blended_cost}"
      value_format:
      value_format_name: percent_2
    - table_calculation: total_blended_cost
      label: Total Blended Cost
      expression: "${cost_and_usage.total_blended_cost}"
      value_format:
      value_format_name: usd_0
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types:
      cost_and_usage.average_blended_cost_per_month: line
      reservation_efficiency: line
      average_blended_cost_per_month: line
    series_colors:
      cost_and_usage.total_blended_cost: "#3B4260"
      total_blended_cost: "#1f3e5a"
      reservation_efficiency: "#1D98D3"
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: reservation_efficiency
        name: Reservation Efficiency
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: average_blended_cost_per_month
        name: Average Blended Cost per Month
      - id: total_blended_cost
        name: Total Blended Cost
    hidden_fields:
    - cost_and_usage.average_blended_cost_per_month
    - cost_and_usage.total_blended_cost
    - cost_and_usage.total_reserved_blended_cost
    row: 32
    col: 0
    width: 12
    height: 13
  - name: Cost by Product (Full Detail)
    title: Cost by Product (Full Detail)
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: table
    fields:
    - cost_and_usage.product_code
    - cost_and_usage.total_blended_cost
    - cost_and_usage.average_blended_cost_per_month
    - cost_and_usage.ri_line_item
    pivots:
    - cost_and_usage.ri_line_item
    sorts:
    - cost_and_usage.total_blended_cost desc 0
    - cost_and_usage.ri_line_item
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_value_labels: false
    font_size: 12
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    series_colors:
      cost_and_usage.total_blended_cost: "#3B4260"
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: cost_and_usage.average_blended_cost_per_month
        name: Line Items (Individual Charges) Average Blended Cost per Month
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: cost_and_usage.total_blended_cost
        name: Line Items (Individual Charges) Total Blended Cost
    row: 32
    col: 12
    width: 12
    height: 13
  - name: Cost by Usage Type (Top 10)
    title: Cost by Usage Type (Top 10)
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: looker_bar
    fields:
    - cost_and_usage.lineitem_usagetype
    - cost_and_usage.average_blended_cost_per_month
    - cost_and_usage.total_blended_cost
    - cost_and_usage.total_reserved_blended_cost
    sorts:
    - cost_and_usage.total_blended_cost desc
    limit: 10
    column_limit: 50
    dynamic_fields:
    - table_calculation: reservation_efficiency
      label: Reservation Efficiency (%)
      expression: "${cost_and_usage.total_reserved_blended_cost}/${cost_and_usage.total_blended_cost}"
      value_format:
      value_format_name: percent_2
    - table_calculation: total_blended_cost
      label: Total Blended Cost
      expression: "${cost_and_usage.total_blended_cost}"
      value_format:
      value_format_name: usd_0
    query_timezone: America/Los_Angeles
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types:
      cost_and_usage.average_blended_cost_per_month: line
      reservation_efficiency: line
    series_colors:
      cost_and_usage.total_blended_cost: "#3B4260"
      cost_and_usage.average_blended_cost_per_month: "#1D98D3"
      total_blended_cost: "#3B4260"
      reservation_efficiency: "#1D98D3"
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: false
      showValues: false
      tickDensity: default
      tickDensityCustom:
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: reservation_efficiency
        name: Reservation Efficiency (%)
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: custom
      tickDensityCustom: '9'
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: total_blended_cost
        name: Total Blended Cost
    hidden_fields:
    - cost_and_usage.average_blended_cost_per_month
    - cost_and_usage.total_blended_cost
    - cost_and_usage.total_reserved_blended_cost
    row: 45
    col: 12
    width: 12
    height: 13
  - name: Cost by Usage Type (Full Detail)
    title: Cost by Usage Type (Full Detail)
    model: aws_athena_cost_and_usage
    explore: cost_and_usage
    type: table
    fields:
    - cost_and_usage.lineitem_usagetype
    - cost_and_usage.average_blended_cost_per_month
    - cost_and_usage.total_blended_cost
    - cost_and_usage.ri_line_item
    pivots:
    - cost_and_usage.ri_line_item
    sorts:
    - cost_and_usage.total_blended_cost desc 1
    - cost_and_usage.ri_line_item 0
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    show_null_points: true
    point_style: circle
    interpolation: linear
    series_types: {}
    series_colors:
      cost_and_usage.total_blended_cost: "#3B4260"
      cost_and_usage.average_blended_cost_per_month: "#1D98D3"
    y_axes:
    - label:
      maxValue:
      minValue:
      orientation: top
      showLabels: true
      showValues: false
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: cost_and_usage.average_blended_cost_per_month
        name: Line Items (Individual Charges) Average Blended Cost per Month
    - label: ''
      maxValue:
      minValue:
      orientation: bottom
      showLabels: true
      showValues: true
      tickDensity: default
      tickDensityCustom: 5
      type: linear
      unpinAxis: false
      valueFormat:
      series:
      - id: cost_and_usage.total_blended_cost
        name: Line Items (Individual Charges) Total Blended Cost
    row: 45
    col: 0
    width: 12
    height: 13
