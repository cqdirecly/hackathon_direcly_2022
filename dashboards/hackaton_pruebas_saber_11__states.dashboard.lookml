- dashboard: hackaton_pruebas_saber_11__states
  title: Hackaton Pruebas saber 11 - States
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: dMsUFMh21fhljKADIzUH1A
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #0073BB;">

      <nav style="font-size: 18px;  padding: 5px 10px 0 10px; height: 60px;">

      <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/194">🏠 Summary</a>

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/197">🧑‍🎓 Students</a>

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/196">👪 Family</a>

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-top: solid 1px #0073BB; border-left: solid 1px #4285F4; border-right: solid 1px #0073BB; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #EAF1FE;" href="https://direcly.cloud.looker.com/dashboards/198">✏️ By States</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: <img src="https://storage.googleapis.com/images-for-looker/Hackathon/logo-prueba-2022_11_hc.svg"
      width="300">
    body_text: ''
    row: 2
    col: 0
    width: 24
    height: 3
  - title: Top schools
    name: Top schools
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_grid
    fields: [pruebas_saber_11.avg_punt_global, pruebas_saber_11.cole_nombre_establecimiento,
      pruebas_saber_11.cole_mcpio_ubicacion]
    sorts: [pruebas_saber_11.avg_punt_global desc]
    limit: 15
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels:
      pruebas_saber_11.cole_nombre_establecimiento: School name
      pruebas_saber_11.cole_mcpio_ubicacion: City
    series_cell_visualizations:
      pruebas_saber_11.avg_punt_global:
        is_active: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axes: [{label: '', orientation: left, series: [{axisId: pruebas_saber_11.avg_punt_ingles,
            id: pruebas_saber_11.avg_punt_ingles, name: Avg Score English}, {axisId: pruebas_saber_11.avg_punt_matematicas,
            id: pruebas_saber_11.avg_punt_matematicas, name: Avg Score Math}, {axisId: pruebas_saber_11.avg_punt_c_naturales,
            id: pruebas_saber_11.avg_punt_c_naturales, name: Avg Score Natural Science},
          {axisId: pruebas_saber_11.avg_punt_sociales_ciudadanas, id: pruebas_saber_11.avg_punt_sociales_ciudadanas,
            name: Avg Score Social and Civic}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    stacking: ''
    legend_position: center
    series_types: {}
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
    defaults_version: 1
    title_hidden: true
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 7
    col: 0
    width: 12
    height: 9
  - title: Total students
    name: Total students
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [count_of_estu_consecutivo]
    limit: 500
    dynamic_fields: [{measure: count_of_estu_consecutivo, based_on: pruebas_saber_11.estu_consecutivo,
        expression: '', label: Count of Estu Consecutivo, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 5
    col: 12
    width: 4
    height: 2
  - title: Total Schools
    name: Total Schools
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [count_of_cole_cod_dane_establecimiento]
    limit: 500
    dynamic_fields: [{measure: count_of_cole_cod_dane_establecimiento, based_on: pruebas_saber_11.cole_cod_dane_establecimiento,
        expression: '', label: Count of Cole Cod Dane Establecimiento, type: count_distinct,
        _kind_hint: measure, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 5
    col: 8
    width: 4
    height: 2
  - title: Avg score
    name: Avg score
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [pruebas_saber_11.avg_punt_global]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 5
    col: 20
    width: 4
    height: 2
  - title: Max score
    name: Max score
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [pruebas_saber_11.punt_global]
    sorts: [pruebas_saber_11.punt_global]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: 'max(${pruebas_saber_11.punt_global})',
        label: Max score, value_format: !!null '', value_format_name: !!null '', _kind_hint: dimension,
        table_calculation: max_score, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: [pruebas_saber_11.punt_global]
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 5
    col: 16
    width: 4
    height: 2
  - title: State and ranking in Colombia
    name: State and ranking in Colombia
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [ranking_state.state, ranking_state.rank, ranking]
    sorts: [ranking_state.rank]
    limit: 500
    dynamic_fields: [{category: dimension, expression: 'concat(${ranking_state.state},
          ": ", ${ranking_state.rank}, "°")', label: Ranking, value_format: !!null '',
        value_format_name: !!null '', dimension: ranking, _kind_hint: dimension, _type_hint: string}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#004899"
    series_types: {}
    defaults_version: 1
    hidden_fields: [ranking_state.state, ranking_state.rank]
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: ranking_state.state
    row: 5
    col: 0
    width: 8
    height: 2
  - title: Subjects over time
    name: Subjects over time
    model: direcly_hackaton_2022
    explore: scores
    type: looker_line
    fields: [scores.year, scores.subject, scores.scores_subjects]
    pivots: [scores.subject]
    sorts: [scores.subject, scores.scores_subjects desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: pivot
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen: {}
    row: 7
    col: 12
    width: 12
    height: 9
  filters:
  - name: Periodo
    title: Periodo
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    listens_to_filters: []
    field: pruebas_saber_11.periodo
  - name: School
    title: School
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    listens_to_filters: []
    field: pruebas_saber_11.cole_nombre_sede
  - name: State
    title: State
    type: field_filter
    default_value: BOGOTÁ
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    listens_to_filters: []
    field: pruebas_saber_11.cole_depto_ubicacion
