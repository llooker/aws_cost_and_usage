# - dashboard: cost_and_usage
#   title: Aws Billing
#   layout: grid
#   rows:
#     - elements: [spend_last_month, month_to_date_balance, year_to_date_spend]
#       height: 200
#     - elements: [cost_and_usage_by_day]
#       height: 300
#     - elements: [cost_by_product_type_and_date, cost_and_usage_by_product]
#       height: 300
#     - elements: [spend_by_pricing_type]
#       height: 200
#
#     - elements: [user_type_analysis]
#       height: 100
#
#     - elements: [avg_spend_per_customer, internal_spend, spend_by_resource ]
#       height: 200
#     - elements: [cost_by_pt_and_ut]
#       height: 200
#
#
#
#   filters:
#
#   - name: date
#     title: "Date"
#     type: date_filter
#     default_value: Last 90 Days
#
#   elements:
#
#     - name: spend_last_month
#       title: Spend Last Month
#       type: single_value
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       measures: [cost_and_usage.total_blended_cost]
#       listen:
#         date: cost_and_usage.usage_start_date
#
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       custom_color_enabled: false
#       custom_color: forestgreen
#       show_single_value_title: true
#       show_comparison: false
#       comparison_type: value
#       comparison_reverse_colors: false
#       show_comparison_label: true
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#
#     - name: month_to_date_balance
#       title: Month To-Date Balance
#       type: single_value
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       measures: [cost_and_usage.total_current_month_cost, cost_and_usage.average_cost_per_month]
#
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       custom_color_enabled: false
#       custom_color: forestgreen
#       show_single_value_title: true
#       show_comparison: true
#       comparison_type: progress_percentage
#       comparison_reverse_colors: false
#       show_comparison_label: true
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#       comparison_label: Average Cost
#
#     - name: year_to_date_spend
#       title: Year To-Date Spend
#       type: single_value
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       measures: [cost_and_usage.total_blended_cost]
#       filters:
#         cost_and_usage.usage_end_date: 1 years
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       custom_color_enabled: false
#       custom_color: forestgreen
#       show_single_value_title: true
#       show_comparison: false
#       comparison_type: value
#       comparison_reverse_colors: false
#       show_comparison_label: true
#       value_labels: legend
#       label_type: labPer
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#
#     - name: cost_and_usage_by_day
#       title: Cost and Usage By Day
#       type: looker_column
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       dimensions: [cost_and_usage.usage_start_date]
#       fill_fields: [cost_and_usage.usage_start_date]
#       measures: [cost_and_usage.total_blended_cost, cost_and_usage.total_usage_amount]
#       listen:
#         date: cost_and_usage.usage_start_date
#       sorts: [cost_and_usage.usage_start_date]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: false
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: false
#       show_x_axis_ticks: false
#       x_axis_scale: ordinal
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       show_null_points: true
#       point_style: none
#       interpolation: linear
#       x_axis_label: Usage Date
#       column_spacing_ratio: 0.09
#       series_types:
#         cost_and_usage.total_usage_amount: line
#       column_group_spacing_ratio: ''
#       x_axis_datetime_label: "%m-%d-%y"
#       y_axis_reversed: false
#       y_axis_value_format: ''
#       reference_lines: []
#       y_axis_orientation: [left, right]
#       series_labels:
#         cost_and_usage.total_blended_cost: Cost
#         cost_and_usage.total_usage_amount: Usage
#       y_axis_labels: [Cost, Usage]
#
#     - name: cost_by_product_type_and_date
#       title: Cost By Product Type and Date
#       type: looker_column
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       dimensions: [cost_and_usage.product_code, cost_and_usage.usage_start_date]
#       pivots: [cost_and_usage.product_code]
#       fill_fields: [cost_and_usage.usage_start_date]
#       measures: [cost_and_usage.total_blended_cost, cost_and_usage.total_usage_amount]
#       filters:
#         cost_and_usage.product_code: AmazonEC2,AmazonRDS,AmazonRedshift
#       listen:
#         date: cost_and_usage.usage_start_date
#       sorts: [cost_and_usage.total_blended_cost desc 0, cost_and_usage.product_code]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       stacking: normal
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       show_row_numbers: true
#       truncate_column_names: false
#       hide_totals: false
#       hide_row_totals: false
#       table_theme: editable
#       enable_conditional_formatting: false
#       conditional_formatting_ignored_fields: []
#       conditional_formatting_include_totals: false
#       conditional_formatting_include_nulls: false
#       show_null_points: true
#       point_style: none
#       interpolation: linear
#       series_types: {}
#       hidden_fields: [cost_and_usage.total_usage_amount]
#       column_group_spacing_ratio: ''
#       column_spacing_ratio: ''
#       x_axis_label: Date
#       y_axis_labels: [Cost]
#
#     - name: cost_and_usage_by_product
#       title: Cost and Usage By Product
#       type: table
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       dimensions: [cost_and_usage.product_code]
#       measures: [cost_and_usage.total_blended_cost, cost_and_usage.total_usage_amount]
#       listen:
#         date: cost_and_usage.usage_start_date
#       sorts: [cost_and_usage.total_blended_cost desc]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       show_view_names: true
#       show_row_numbers: true
#       truncate_column_names: false
#       hide_totals: false
#       hide_row_totals: false
#       table_theme: editable
#       limit_displayed_rows: false
#       enable_conditional_formatting: false
#       conditional_formatting_ignored_fields: []
#       conditional_formatting_include_totals: false
#       conditional_formatting_include_nulls: false
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#
#     - name: spend_by_pricing_type
#       title: Spend by Pricing Type
#       type: looker_bar
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       dimensions: [cost_and_usage.pricing_term, cost_and_usage.product_code]
#       pivots: [cost_and_usage.pricing_term]
#       measures: [cost_and_usage.total_blended_cost, cost_and_usage.total_usage_amount]
#       filters:
#         cost_and_usage.product_code: AmazonEC2,AmazonRDS,AmazonRedshift,AmazonS3
#         cost_and_usage.pricing_term: "-NULL"
#       listen:
#         date: cost_and_usage.usage_start_date
#       sorts: [cost_and_usage.total_blended_cost desc 0, cost_and_usage.pricing_term 0, cost_and_usage.product_code]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       stacking: normal
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: false
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       hidden_fields: [cost_and_usage.total_usage_amount]
#       series_types: {}
#       hidden_series: []
#       y_axis_labels: [Total Cost]
#
#
#     - name: user_type_analysis
#       title: 'User Type Analysis'
#       type: text
#
#     - name: avg_spend_per_customer
#       title: Average Spend Per Customer
#       type: single_value
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       dimensions: [cost_and_usage.usertag1]
#       measures: [cost_and_usage.total_blended_cost, cost_and_usage.average_cost_per_usertype,
#         cost_and_usage.count_usertype_detail]
#       filters:
#         cost_and_usage.usertag1: customer
#       listen:
#         date: cost_and_usage.usage_start_date
#       sorts: [cost_and_usage.average_cost_per_usertype desc]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       custom_color_enabled: false
#       custom_color: forestgreen
#       show_single_value_title: true
#       show_comparison: true
#       comparison_type: value
#       comparison_reverse_colors: false
#       show_comparison_label: true
#       value_labels: legend
#       label_type: labPer
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#       hidden_fields: [cost_and_usage.usertag1, cost_and_usage.total_blended_cost]
#       comparison_label: Customers
#
#
#     - name: internal_spend
#       title: Internal Spend
#       type: single_value
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       measures: [cost_and_usage.total_blended_cost]
#       listen:
#         date: cost_and_usage.usage_start_date
#       filters:
#         cost_and_usage.usertag1: devinternal,infrastructure,internal
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       custom_color_enabled: false
#       custom_color: forestgreen
#       show_single_value_title: true
#       show_comparison: false
#       comparison_type: value
#       comparison_reverse_colors: false
#       show_comparison_label: true
#       value_labels: legend
#       label_type: labPer
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#       hidden_fields:
#       comparison_label: Customers
#
#     - name: spend_by_resource
#       title: Spend By Resource
#       type: table
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       dimensions: [cost_and_usage.usertag1]
#       measures: [cost_and_usage.total_blended_cost]
#       listen:
#         date: cost_and_usage.usage_start_date
#       sorts: [cost_and_usage.total_blended_cost desc]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       show_view_names: true
#       show_row_numbers: true
#       truncate_column_names: false
#       hide_totals: false
#       hide_row_totals: false
#       table_theme: editable
#       limit_displayed_rows: false
#       enable_conditional_formatting: false
#       conditional_formatting_ignored_fields: []
#       conditional_formatting_include_totals: false
#       conditional_formatting_include_nulls: false
#       value_labels: legend
#       label_type: labPer
#       stacking: ''
#       show_value_labels: false
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       series_types: {}
#       inner_radius: 50
#       series_labels:
#         ? ''
#         : Other
#
#     - name: cost_by_pt_and_ut
#       title: Cost By Product Type and User type
#       type: looker_donut_multiples
#       model: aws_athena_cost_and_usage
#       explore: cost_and_usage
#       dimensions: [cost_and_usage.usertag1, cost_and_usage.product_code]
#       pivots: [cost_and_usage.usertag1]
#       measures: [cost_and_usage.total_blended_cost]
#       filters:
#         cost_and_usage.product_code: AmazonEC2,AmazonRedshift,AmazonRDS,AmazonS3
#       listen:
#         date: cost_and_usage.usage_start_date
#       sorts: [cost_and_usage.total_blended_cost desc 0, cost_and_usage.usertag1, cost_and_usage.product_code]
#       limit: '500'
#       column_limit: '50'
#       query_timezone: America/Los_Angeles
#       show_value_labels: false
#       font_size: 14
#       stacking: normal
#       label_density: 25
#       legend_position: center
#       x_axis_gridlines: false
#       y_axis_gridlines: true
#       show_view_names: true
#       limit_displayed_rows: false
#       y_axis_combined: true
#       show_y_axis_labels: true
#       show_y_axis_ticks: true
#       y_axis_tick_density: default
#       y_axis_tick_density_custom: 5
#       show_x_axis_label: true
#       show_x_axis_ticks: true
#       x_axis_scale: auto
#       y_axis_scale_mode: linear
#       ordering: none
#       show_null_labels: false
#       show_totals_labels: false
#       show_silhouette: false
#       totals_color: "#808080"
#       show_row_numbers: true
#       truncate_column_names: false
#       hide_totals: false
#       hide_row_totals: false
#       table_theme: editable
#       enable_conditional_formatting: false
#       conditional_formatting_ignored_fields: []
#       conditional_formatting_include_totals: false
#       conditional_formatting_include_nulls: false
#       value_labels: legend
#       label_type: labPer
#       custom_color_enabled: false
#       custom_color: forestgreen
#       show_single_value_title: true
#       show_comparison: true
#       comparison_type: value
#       comparison_reverse_colors: false
#       show_comparison_label: true
#       series_types: {}
#       hidden_fields:
#       comparison_label: Customers
#       hidden_series: []
#       charts_across: 4
