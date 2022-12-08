- dashboard: hackaton_pruebas_saber_11
  title: Hackaton Pruebas saber 11
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: KkT3KNzUARsI7D9XDtWjIY
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #0073BB;">

      <nav style="font-size: 18px;  padding: 5px 10px 0 10px; height: 60px;">

        <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-top: solid 1px #0073BB; border-left: solid 1px #4285F4; border-right: solid 1px #0073BB; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #EAF1FE;" href="https://direcly.cloud.looker.com/dashboards/194">🏠 Summary</a>

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/197">🧑‍🎓 Students</a>

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/196">👪 Family</a>

      <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/198">✏️ By States</a>

      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 3
  - title: Total Students
    name: Total Students
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [pruebas_saber_11.count, count_of_estu_consecutivo]
    sorts: [pruebas_saber_11.count desc 0]
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
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: [pruebas_saber_11.count]
    y_axes: []
    listen:
      School: pruebas_saber_11.cole_nombre_sede
      Period: pruebas_saber_11.periodo
    row: 6
    col: 0
    width: 5
    height: 2
  - title: Total Educational Institutions
    name: Total Educational Institutions
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [count_of_cole_nombre_establecimiento]
    limit: 500
    dynamic_fields: [{measure: count_of_cole_nombre_establecimiento, based_on: pruebas_saber_11.cole_nombre_establecimiento,
        expression: '', label: Count of Cole Nombre Establecimiento, type: count_distinct,
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
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      School: pruebas_saber_11.cole_nombre_sede
      Period: pruebas_saber_11.periodo
    row: 6
    col: 5
    width: 5
    height: 2
  - title: Global score by Area
    name: Global score by Area
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_column
    fields: [pruebas_saber_11.cole_area_ubicacion, pruebas_saber_11.avg_punt_global]
    pivots: [pruebas_saber_11.cole_area_ubicacion]
    sorts: [pruebas_saber_11.cole_area_ubicacion]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
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
    y_axes: [{label: '', orientation: left, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: RURAL - pruebas_saber_11.avg_punt_global, name: RURAL}, {axisId: pruebas_saber_11.avg_punt_global,
            id: URBANO - pruebas_saber_11.avg_punt_global, name: URBANO}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    hidden_fields: []
    listen:
      School: pruebas_saber_11.cole_nombre_sede
    row: 14
    col: 8
    width: 7
    height: 5
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: <img src="https://storage.googleapis.com/images-for-looker/Hackathon/logo-prueba-2022_11_hc.svg"
      width="300">
    body_text: ''
    row: 3
    col: 0
    width: 15
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="
          font-family: 'Montserrat','Open Sans';  text-align: justify;
      " >Pruebas Saber 11, is the official test taken by the students who are finishing High-School, it measures the knowledge acquired by the students during the school time.
      <strong>
      It is composed by five subjects, Critical reading, Math, Social and civic, Natural Science and English, every one of the with a max score of 100, and a global score that goes from 0 to 500.</strong> </div>
    row: 3
    col: 16
    width: 8
    height: 3
  - title: Avg Scores by Region
    name: Avg Scores by Region
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_map
    fields: [pruebas_saber_11.estu_depto_reside, pruebas_saber_11.avg_punt_global]
    sorts: [pruebas_saber_11.estu_depto_reside]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
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
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: true
    map: auto
    map_projection: ''
    colors: [yellow, blue, red]
    quantize_colors: false
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      School: pruebas_saber_11.cole_nombre_sede
      Period: pruebas_saber_11.periodo
    row: 6
    col: 15
    width: 9
    height: 13
  - title: Avg Global Score
    name: Avg Global Score
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [pruebas_saber_11.avg_punt_global]
    limit: 500
    dynamic_fields: [{measure: count_of_cole_nombre_establecimiento, based_on: pruebas_saber_11.cole_nombre_establecimiento,
        expression: '', label: Count of Cole Nombre Establecimiento, type: count_distinct,
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
    show_view_names: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      School: pruebas_saber_11.cole_nombre_sede
      Period: pruebas_saber_11.periodo
    row: 6
    col: 10
    width: 5
    height: 2
  - title: Untitled
    name: Untitled
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_column
    fields: [pruebas_saber_11.avg_punt_ingles, pruebas_saber_11.cole_naturaleza, pruebas_saber_11.avg_punt_lectura_critica,
      pruebas_saber_11.avg_punt_matematicas, pruebas_saber_11.avg_punt_c_naturales,
      pruebas_saber_11.avg_punt_sociales_ciudadanas, pruebas_saber_11.avg_punt_global]
    sorts: [pruebas_saber_11.avg_punt_ingles desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: pruebas_saber_11.avg_punt_ingles,
            id: pruebas_saber_11.avg_punt_ingles, name: Avg Score English}, {axisId: pruebas_saber_11.avg_punt_lectura_critica,
            id: pruebas_saber_11.avg_punt_lectura_critica, name: Avg Score Critical
              Reading}, {axisId: pruebas_saber_11.avg_punt_matematicas, id: pruebas_saber_11.avg_punt_matematicas,
            name: Avg Score Math}, {axisId: pruebas_saber_11.avg_punt_c_naturales,
            id: pruebas_saber_11.avg_punt_c_naturales, name: Avg Score Natural Science},
          {axisId: pruebas_saber_11.avg_punt_sociales_ciudadanas, id: pruebas_saber_11.avg_punt_sociales_ciudadanas,
            name: Avg Score Social and Civic}], showLabels: false, showValues: false,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: !!null '', orientation: right, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types:
      pruebas_saber_11.avg_punt_global: line
    defaults_version: 1
    title_hidden: true
    listen:
      School: pruebas_saber_11.cole_nombre_sede
      Period: pruebas_saber_11.periodo
    row: 13
    col: 0
    width: 8
    height: 6
  - title: 'Score global '
    name: 'Score global '
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_column
    fields: [pruebas_saber_11.periodo, pruebas_saber_11.avg_punt_global]
    sorts: [pruebas_saber_11.periodo]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: ''
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
    y_axes: [{label: '', orientation: left, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    show_null_points: true
    defaults_version: 1
    listen:
      School: pruebas_saber_11.cole_nombre_sede
    row: 8
    col: 0
    width: 8
    height: 5
  - title: Period
    name: Period
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_bar
    fields: [pruebas_saber_11.periodo, pruebas_saber_11.avg_punt_ingles, pruebas_saber_11.avg_punt_lectura_critica,
      pruebas_saber_11.avg_punt_matematicas, pruebas_saber_11.avg_punt_c_naturales,
      pruebas_saber_11.avg_punt_sociales_ciudadanas]
    sorts: [pruebas_saber_11.periodo]
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
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      School: pruebas_saber_11.cole_nombre_sede
      Period: pruebas_saber_11.periodo
    row: 8
    col: 8
    width: 7
    height: 6
  - title: Untitled
    name: Untitled (2)
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_grid
    fields: [pruebas_saber_11.avg_punt_lectura_critica, pruebas_saber_11.avg_punt_ingles,
      pruebas_saber_11.avg_punt_matematicas, pruebas_saber_11.avg_punt_c_naturales,
      pruebas_saber_11.avg_punt_sociales_ciudadanas, pruebas_saber_11.avg_punt_global,
      pruebas_saber_11.cole_depto_ubicacion, pruebas_saber_11.cole_mcpio_ubicacion]
    sorts: [pruebas_saber_11.cole_depto_ubicacion]
    subtotals: [pruebas_saber_11.cole_depto_ubicacion]
    limit: 500
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
    series_cell_visualizations:
      pruebas_saber_11.avg_punt_lectura_critica:
        is_active: true
    header_font_color: "#ffffff"
    header_background_color: "#004899"
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    title_hidden: true
    listen:
      School: pruebas_saber_11.cole_nombre_sede
      Period: pruebas_saber_11.periodo
    row: 19
    col: 0
    width: 24
    height: 9
  filters:
  - name: Period
    title: Period
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
