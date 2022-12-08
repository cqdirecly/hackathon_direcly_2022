- dashboard: hackaton_pruebas_saber_11__family
  title: Hackaton Pruebas saber 11 - Family
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: na6c8a3fU4z60bV7tyB5zV
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

       <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-top: solid 1px #0073BB; border-left: solid 1px #4285F4; border-right: solid 1px #0073BB; border-radius: 5px 5px 0 0; float: left; line-height: 40px; font-weight: bold; background-color: #EAF1FE;" href="https://direcly.cloud.looker.com/dashboards/196">👪 Family</a>

      <a style="color:#0073BB; text-decoration: none;padding: 5px 15px; border-bottom: solid 1px #0073BB; float: left; line-height: 40px;" href="https://direcly.cloud.looker.com/dashboards/198">✏️ By States</a>
      </nav>

      </div>
    row: 0
    col: 0
    width: 24
    height: 2
  - title: Influence of eating milk and its derivates on Global scores
    name: Influence of eating milk and its derivates on Global scores
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_bar
    fields: [pruebas_saber_11.fami_comelechederivados, pruebas_saber_11.avg_punt_global]
    filters:
      pruebas_saber_11.fami_comelechederivados: -NULL,-"-"
    sorts: [pruebas_saber_11.avg_punt_global desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 12
    col: 0
    width: 8
    height: 5
  - title: Correlation Mother's education and score
    name: Correlation Mother's education and score
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [pruebas_saber_11.avg_punt_global, pruebas_saber_11.mothers_education_level,
      pruebas_saber_11.estu_consecutivo]
    filters:
      pruebas_saber_11.fami_comelechederivados: -NULL,-"-"
    sorts: [pruebas_saber_11.estu_consecutivo desc]
    dynamic_fields: [{category: table_calculation, expression: 'correl(${metric_of_mothers_education},
          ${pruebas_saber_11.avg_punt_global})', label: correlacion mother's education
          and global score, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: correlacion_mothers_education_and_global_score,
        _type_hint: number}, {category: table_calculation, expression: "${pruebas_saber_11.mothers_education_level}",
        label: metric of mother's education, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: metric_of_mothers_education, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_null_points: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [pruebas_saber_11.estu_consecutivo, pruebas_saber_11.avg_punt_global,
      metric_of_mothers_education]
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 6
    col: 0
    width: 8
    height: 1
  - name: '<div style="background-color:#0073BB; text-align:center;border-radius:
      20px 12px 0 0; "> <font color="#ffffff"  size="3"> Correlation Mother''s education
      and score</font> </div>'
    type: text
    title_text: '<div style="background-color:#0073BB; text-align:center;border-radius:
      20px 12px 0 0; "> <font color="#ffffff"  size="3"> Correlation Mother''s education
      and score</font> </div>'
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 0
    width: 8
    height: 1
  - name: '<div style="background-color:#0073BB; text-align:center;border-radius:
      20px 12px 0 0; "> <font color="#ffffff"  size="3"> Correlation Father''s education
      and score</font> </div> '
    type: text
    title_text: '<div style="background-color:#0073BB; text-align:center;border-radius:
      20px 12px 0 0; "> <font color="#ffffff"  size="3"> Correlation Father''s education
      and score</font> </div> '
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 8
    width: 8
    height: 1
  - title: Correlation Father's education and score
    name: Correlation Father's education and score
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [pruebas_saber_11.avg_punt_global, pruebas_saber_11.estu_consecutivo,
      pruebas_saber_11.fathers_education_level]
    filters:
      pruebas_saber_11.fami_comelechederivados: -NULL,-"-"
    sorts: [pruebas_saber_11.estu_consecutivo desc]
    dynamic_fields: [{category: table_calculation, expression: 'correl(${metric_of_fathers_education},
          ${pruebas_saber_11.avg_punt_global})', label: correlacion father's education
          and global score, value_format: !!null '', value_format_name: decimal_2,
        _kind_hint: measure, table_calculation: correlacion_fathers_education_and_global_score,
        _type_hint: number}, {category: table_calculation, expression: "${pruebas_saber_11.fathers_education_level}",
        label: metric of father's education, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: metric_of_fathers_education, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_null_points: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [pruebas_saber_11.estu_consecutivo, pruebas_saber_11.avg_punt_global,
      metric_of_mothers_education]
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 6
    col: 8
    width: 8
    height: 1
  - name: '<div style="background-color:#0073BB; text-align:center;border-radius:
      20px 12px 0 0; "> <font color="#ffffff"  size="3"> Correlation Economic level
      and score</font> </div>'
    type: text
    title_text: '<div style="background-color:#0073BB; text-align:center;border-radius:
      20px 12px 0 0; "> <font color="#ffffff"  size="3"> Correlation Economic level
      and score</font> </div>'
    subtitle_text: ''
    body_text: ''
    row: 5
    col: 16
    width: 8
    height: 1
  - title: Correlation Father's education and score (Copy)
    name: Correlation Father's education and score (Copy)
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: single_value
    fields: [pruebas_saber_11.avg_punt_global, pruebas_saber_11.estrato_level]
    filters:
      pruebas_saber_11.fami_comelechederivados: -NULL,-"-"
    sorts: [pruebas_saber_11.avg_punt_global desc 0]
    dynamic_fields: [{category: table_calculation, expression: 'correl(${metric_of_estrato},
          ${pruebas_saber_11.avg_punt_global})', label: correlacion  estrato and global
          score, value_format: !!null '', value_format_name: decimal_2, _kind_hint: measure,
        table_calculation: correlacion_estrato_and_global_score, _type_hint: number},
      {category: table_calculation, expression: "${pruebas_saber_11.estrato_level}",
        label: metric of estrato, value_format: !!null '', value_format_name: !!null '',
        _kind_hint: dimension, table_calculation: metric_of_estrato, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    show_null_points: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [pruebas_saber_11.avg_punt_global, metric_of_mothers_education,
      pruebas_saber_11.estrato_level, metric_of_estrato]
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 6
    col: 16
    width: 8
    height: 1
  - title: 'Influence of economic level on Global scores '
    name: 'Influence of economic level on Global scores '
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_bar
    fields: [pruebas_saber_11.avg_punt_global, pruebas_saber_11.fami_estratovivienda]
    filters:
      pruebas_saber_11.fami_estratovivienda: -NULL,-"-"
    sorts: [pruebas_saber_11.avg_punt_global desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      pruebas_saber_11.avg_punt_global: "#004899"
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 7
    col: 0
    width: 10
    height: 5
  - title: Internet Connection
    name: Internet Connection
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_column
    fields: [pruebas_saber_11.fami_tieneinternet, pruebas_saber_11.avg_punt_global]
    filters:
      pruebas_saber_11.fami_tieneinternet: -NULL,-"-",-Sin respuesta
    sorts: [pruebas_saber_11.fami_tieneinternet]
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
    color_application:
      collection_id: hackaton
      palette_id: hackaton-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      pruebas_saber_11.avg_punt_global: "#0db939"
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 7
    col: 10
    width: 7
    height: 5
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
  - title: Influence of eating meat- fish- egg and its derivates
    name: Influence of eating meat- fish- egg and its derivates
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_bar
    fields: [pruebas_saber_11.avg_punt_global, pruebas_saber_11.fami_comecarnepescadohuevo]
    filters:
      pruebas_saber_11.fami_comecarnepescadohuevo: -NULL,-"-"
    sorts: [pruebas_saber_11.avg_punt_global desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      pruebas_saber_11.avg_punt_global: "#004899"
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 12
    col: 8
    width: 8
    height: 5
  - title: Influence of eating fruits- legumes and its derivates
    name: Influence of eating fruits- legumes and its derivates
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_bar
    fields: [pruebas_saber_11.avg_punt_global, pruebas_saber_11.fami_comecerealfrutoslegumbre]
    filters:
      pruebas_saber_11.fami_comecerealfrutoslegumbre: -NULL,-"-"
    sorts: [pruebas_saber_11.avg_punt_global desc]
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
    y_axes: [{label: '', orientation: bottom, series: [{axisId: pruebas_saber_11.avg_punt_global,
            id: pruebas_saber_11.avg_punt_global, name: Avg Score Global}], showLabels: false,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      pruebas_saber_11.avg_punt_global: "#0db939"
    defaults_version: 1
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 12
    col: 16
    width: 8
    height: 5
  - title: Internet vs Computador
    name: Internet vs Computador
    model: direcly_hackaton_2022
    explore: pruebas_saber_11
    type: looker_donut_multiples
    fields: [pruebas_saber_11.fami_tienecomputador, count_of_estu_consecutivo, pc,
      internet]
    pivots: [internet]
    filters:
      pruebas_saber_11.fami_tienecomputador: -NULL,-"-"
      pruebas_saber_11.fami_tieneinternet: -NULL,-"-",-Sin respuesta
    sorts: [internet, pruebas_saber_11.fami_tienecomputador desc]
    limit: 500
    dynamic_fields: [{measure: count_of_estu_consecutivo, based_on: pruebas_saber_11.estu_consecutivo,
        expression: '', label: Count of Estu Consecutivo, type: count_distinct, _kind_hint: measure,
        _type_hint: number}, {category: dimension, expression: 'if(${pruebas_saber_11.fami_tienecomputador}="Si","PC",
          "No PC")', label: 'Pc ', value_format: !!null '', value_format_name: !!null '',
        dimension: pc, _kind_hint: dimension, _type_hint: string}, {category: dimension,
        expression: 'if(${pruebas_saber_11.fami_tieneinternet}="Si","Internet", "No
          Internet")', label: Internet, value_format: !!null '', value_format_name: !!null '',
        dimension: internet, _kind_hint: measure, _type_hint: string}]
    show_value_labels: false
    font_size: 12
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
    hidden_fields: [pruebas_saber_11.fami_tienecomputador]
    listen:
      Periodo: pruebas_saber_11.periodo
      State: pruebas_saber_11.estu_mcpio_reside
    row: 7
    col: 17
    width: 7
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
    field: pruebas_saber_11.estu_mcpio_reside
