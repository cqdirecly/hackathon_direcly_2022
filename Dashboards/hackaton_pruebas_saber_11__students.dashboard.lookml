- dashboard: hackaton_pruebas_saber_11__students
  title: Hackaton Pruebas saber 11 - Students
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: wocbR3y21w4sVWV25kXtgp
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: |-
      <div style="border-bottom: solid 1px #0073BB;">

      <nav style="font-size: 18px;  padding: 5px 10px 0 10px; height: 60px;">

      <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/194">🏠 Summary</a>

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-top: solid 1px #0073BB; border-left: solid 1px #4285F4; border-right: solid 1px #0073BB; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #EAF1FE;" href="https://direcly.cloud.looker.com/dashboards/197">🧑‍🎓 Students</a>

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/196">👪 Family</a>

      <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/198">✏️ By States</a>
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
  - title: Gender
    name: Gender
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_pie
    fields: [pruebas_saber_11.estu_genero, count_of_estu_consecutivo]
    filters:
      pruebas_saber_11.estu_genero: -NULL,-"-"
    limit: 500
    dynamic_fields: [{measure: count_of_estu_consecutivo, based_on: pruebas_saber_11.estu_consecutivo,
        expression: '', label: Count of Estu Consecutivo, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    value_labels: legend
    label_type: labPer
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
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 11
    col: 14
    width: 5
    height: 5
  - title: Etnia
    name: Etnia
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_pie
    fields: [pruebas_saber_11.estu_tieneetnia, count_of_estu_consecutivo]
    filters:
      pruebas_saber_11.estu_tieneetnia: -NULL,-"-"
    limit: 500
    dynamic_fields: [{measure: count_of_estu_consecutivo, based_on: pruebas_saber_11.estu_consecutivo,
        expression: '', label: Count of Estu Consecutivo, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    value_labels: legend
    label_type: labPer
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
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 11
    col: 19
    width: 5
    height: 5
  - title: Reading time
    name: Reading time
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_column
    fields: [pruebas_saber_11.estu_dedicacionlecturadiaria, pruebas_saber_11.count,
      pruebas_saber_11.avg_punt_global]
    filters:
      pruebas_saber_11.estu_dedicacionlecturadiaria: -NULL,-"-"
      pruebas_saber_11.estu_genero: -NULL,-"-"
    sorts: [pruebas_saber_11.count desc]
    limit: 10
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
    y_axes: [{label: '', orientation: left, series: [{axisId: pruebas_saber_11.count,
            id: pruebas_saber_11.count, name: Pruebas Saber 11}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: '', orientation: right, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, type: linear}]
    font_size: '12'
    series_types:
      F - pruebas_saber_11.avg_punt_global: line
      M - pruebas_saber_11.avg_punt_global: line
      pruebas_saber_11.avg_punt_global: line
    value_labels: legend
    label_type: labPer
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 5
    col: 13
    width: 11
    height: 6
  - title: Untitled
    name: Untitled
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_column
    fields: [pruebas_saber_11.avg_punt_ingles, pruebas_saber_11.avg_punt_matematicas,
      pruebas_saber_11.avg_punt_c_naturales, pruebas_saber_11.avg_punt_sociales_ciudadanas,
      pruebas_saber_11.avg_punt_global, pruebas_saber_11.estu_depto_presentacion]
    sorts: [pruebas_saber_11.avg_punt_global desc]
    limit: 10
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
    series_types:
      pruebas_saber_11.avg_punt_global: line
    series_colors:
      pruebas_saber_11.avg_punt_c_naturales: "#0db939"
      pruebas_saber_11.avg_punt_sociales_ciudadanas: "#0041d3"
      pruebas_saber_11.avg_punt_global: "#0db939"
    defaults_version: 1
    title_hidden: true
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 5
    col: 0
    width: 13
    height: 6
  - title: AVG English Score
    name: AVG English Score
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_column
    fields: [pruebas_saber_11.desemp_ingles, count_of_estu_consecutivo]
    sorts: [count_of_estu_consecutivo desc 0]
    limit: 500
    dynamic_fields: [{measure: count_of_estu_consecutivo, based_on: pruebas_saber_11.estu_consecutivo,
        expression: '', label: Count of Estu Consecutivo, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
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
    y_axes: [{label: '', orientation: left, series: [{axisId: pruebas_saber_11.avg_punt_ingles,
            id: pruebas_saber_11.avg_punt_ingles, name: Avg Score English}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_colors:
      count_of_estu_consecutivo: "#0db939"
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 11
    col: 0
    width: 9
    height: 5
  - title: Bilingual schools
    name: Bilingual schools
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_pie
    fields: [pruebas_saber_11.cole_bilingue, count_of_estu_consecutivo]
    filters:
      pruebas_saber_11.cole_bilingue: -NULL,-"-"
    sorts: [count_of_estu_consecutivo desc 0]
    limit: 500
    dynamic_fields: [{measure: count_of_estu_consecutivo, based_on: pruebas_saber_11.estu_consecutivo,
        expression: '', label: Count of Estu Consecutivo, type: count_distinct, _kind_hint: measure,
        _type_hint: number}]
    value_labels: legend
    label_type: labPer
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
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    listen:
      Periodo: pruebas_saber_11.periodo
      School: pruebas_saber_11.cole_nombre_sede
      State: pruebas_saber_11.cole_depto_ubicacion
    row: 11
    col: 9
    width: 5
    height: 5
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
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    listens_to_filters: []
    field: pruebas_saber_11.cole_depto_ubicacion
