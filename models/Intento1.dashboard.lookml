- dashboard: intento1
  title: Bibliotecas y sus convenios interbibliotecarios
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 1 hour
  preferred_slug: FPJ0S7xz86tz0aZH6S4Uvb
  elements:
  - title: Bibliotecas con convenios
    name: Bibliotecas con convenios
    model: demo_biblioteca
    explore: biblioteca_datos
    type: looker_map
    fields: [biblioteca_datos.ubicacion]
    sorts: [biblioteca_datos.ubicacion]
    limit: 500
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: outdoors
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle_and_icon
    map_marker_icon_name: university
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_view_names: true
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 2
    col: 0
    width: 15
    height: 15
  - title: New Tile
    name: New Tile
    model: demo_biblioteca
    explore: biblioteca_datos
    type: looker_bar
    fields: [biblioteca_datos.reservas, biblioteca_datos.departamento, biblioteca_datos.consultas]
    filters: {}
    sorts: [biblioteca_datos.reservas desc 0]
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
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
    series_types: {}
    series_colors:
      biblioteca_datos.reservas: "#FED85C"
      biblioteca_datos.consultas: "#2B797D"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Cantidad de reservas
    defaults_version: 1
    title_hidden: true
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 8
    col: 15
    width: 9
    height: 9
  - title: New Tile
    name: New Tile (2)
    model: demo_biblioteca
    explore: biblioteca_datos
    type: single_value
    fields: [biblioteca_datos.consultas]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
    single_value_title: Numero de consultas
    conditional_formatting: [{type: greater than, value: 1, background_color: "#2B797D",
        font_color: !!null '', color_application: {collection_id: 6c27c30e-5523-4080-82ae-272146e699d0,
          palette_id: 25b877bc-c7a8-4ed0-a0ef-5ba64ca3658d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 6
    col: 15
    width: 9
    height: 2
  - title: New Tile
    name: New Tile (3)
    model: demo_biblioteca
    explore: biblioteca_datos
    type: single_value
    fields: [biblioteca_datos.maximo_reservas, biblioteca_datos.fecha_date]
    fill_fields: [biblioteca_datos.fecha_date]
    filters:
      biblioteca_datos.fecha_date: 5 days
    sorts: [biblioteca_datos.maximo_reservas desc 0]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress_percentage
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Maximo reservas hoy
    comparison_label: Reservas
    series_types: {}
    defaults_version: 1
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 4
    col: 15
    width: 9
    height: 2
  - title: New Tile
    name: New Tile (4)
    model: demo_biblioteca
    explore: biblioteca_datos
    type: single_value
    fields: [biblioteca_datos.reservas]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
    single_value_title: Numero de reservas
    conditional_formatting: [{type: greater than, value: 1, background_color: "#25435A",
        font_color: !!null '', color_application: {collection_id: 6c27c30e-5523-4080-82ae-272146e699d0,
          palette_id: 25b877bc-c7a8-4ed0-a0ef-5ba64ca3658d}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 2
    col: 15
    width: 9
    height: 2
  - title: 'Total consultas por mes '
    name: 'Total consultas por mes '
    model: demo_biblioteca
    explore: biblioteca_datos
    type: looker_area
    fields: [biblioteca_datos.fecha_month, biblioteca_datos.consultas]
    fill_fields: [biblioteca_datos.fecha_month]
    sorts: [biblioteca_datos.fecha_month desc]
    limit: 150
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: biblioteca_datos.consultas
        forecast_n: 70
        forecast_interval: month
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
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: biblioteca_datos.consultas,
            id: biblioteca_datos.consultas, name: Consultas}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      biblioteca_datos.reservas: "#79D0CC"
      biblioteca_datos.consultas: "#2B797D"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Numero de reservas
    defaults_version: 1
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 25
    col: 0
    width: 11
    height: 5
  - title: 'Porcentaje de reservas por año '
    name: 'Porcentaje de reservas por año '
    model: demo_biblioteca
    explore: biblioteca_datos
    type: looker_donut_multiples
    fields: [biblioteca_datos.reservas, biblioteca_datos.fecha_year, biblioteca_datos.biblioteca_consulta]
    pivots: [biblioteca_datos.fecha_year]
    fill_fields: [biblioteca_datos.fecha_year]
    sorts: [biblioteca_datos.fecha_year, biblioteca_datos.biblioteca_consulta, biblioteca_datos.reservas
        desc 0]
    limit: 1000
    show_value_labels: true
    font_size: 9
    hide_legend: false
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
    series_colors:
      biblioteca_datos.reservas: "#79D0CC"
    value_labels: legend
    label_type: labPer
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: biblioteca_datos.consultas,
            id: biblioteca_datos.consultas, name: Consultas}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
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
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Numero de reservas
    defaults_version: 1
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 17
    col: 1
    width: 22
    height: 6
  - title: Cantidad maxima de reservas por mes
    name: Cantidad maxima de reservas por mes
    model: demo_biblioteca
    explore: biblioteca_datos
    type: looker_column
    fields: [biblioteca_datos.fecha_month, biblioteca_datos.maximo_reservas]
    fill_fields: [biblioteca_datos.fecha_month]
    sorts: [biblioteca_datos.fecha_month desc]
    limit: 20
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: biblioteca_datos.maximo_reservas
        forecast_n: 7
        forecast_interval: month
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
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: biblioteca_datos.consultas,
            id: biblioteca_datos.consultas, name: Consultas}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      biblioteca_datos.reservas: "#79D0CC"
      biblioteca_datos.maximo_reservas: "#2B797D"
    value_labels: labels
    label_type: labPer
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Numero de reservas
    defaults_version: 1
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 25
    col: 11
    width: 13
    height: 5
  - name: <span><img src="" height="75"> <span class='fa fa-bell'> ALERTS</span>
    type: text
    title_text: <span><img src="" height="75"> <span class='fa fa-bell'> ALERTS</span>
    subtitle_text: Usando la campana en cada indicador  puede usted crear sus propias
      alertas
    body_text: ''
    row: 0
    col: 9
    width: 14
    height: 2
  - name: "<span class='fa fa-laptop'> </span> PREDICCIONES"
    type: text
    title_text: "<span class='fa fa-laptop'> </span> PREDICCIONES"
    subtitle_text: 'Usemos forcast para predecir valores en los siguientes meses '
    body_text: ''
    row: 23
    col: 2
    width: 21
    height: 2
  - name: ' <img src="https://wwwprociberneticacom/wp-content/uploads/2020/06/02-1-1-1png"
      " width="80%">'
    type: text
    title_text: ' <img src="https://www.procibernetica.com/wp-content/uploads/2020/06/02-1-1-1.png"
      " width="80%">'
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 9
    height: 2
  - title: New Tile
    name: New Tile (5)
    model: demo_biblioteca
    explore: biblioteca_datos
    type: looker_grid
    fields: [biblioteca_datos.universidad, biblioteca_datos.nombre, biblioteca_datos.proporciono_direccion_de_correo,
      biblioteca_datos.medio_de_preferenica_de_aviso, biblioteca_datos.fecha_date,
      biblioteca_datos.codigo_universidad]
    filters:
      biblioteca_datos.nombre: "-NULL"
    sorts: [biblioteca_datos.nombre desc]
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
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    header_background_color: "#79D0CC"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 6c27c30e-5523-4080-82ae-272146e699d0,
          palette_id: dcfbcfd3-50be-453f-badd-e340864c3b1a}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 32
    col: 0
    width: 24
    height: 8
  - name: <i class="fa fa-tags fa-lg"></i>   Información
    type: text
    title_text: <i class="fa fa-tags fa-lg"></i>   Información
    subtitle_text: Podemos restringir la vista de columnas
    body_text: ''
    row: 30
    col: 1
    width: 21
    height: 2
  - title: New Tile
    name: New Tile (6)
    model: demo_biblioteca
    explore: biblioteca_datos
    type: looker_bar
    fields: [biblioteca_datos.reservas, biblioteca_datos.consultas, biblioteca_datos.departamento_link]
    filters: {}
    sorts: [biblioteca_datos.reservas desc 0]
    limit: 10
    column_limit: 50
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
    color_application:
      collection_id: 6c27c30e-5523-4080-82ae-272146e699d0
      palette_id: 87654122-8144-4720-8259-82ac9908d5f4
      options:
        steps: 5
    series_types: {}
    series_colors:
      biblioteca_datos.reservas: "#FED85C"
      biblioteca_datos.consultas: "#2B797D"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Cantidad de reservas
    defaults_version: 1
    listen:
      Medio De Preferenica De Aviso: biblioteca_datos.medio_de_preferenica_de_aviso
      Departamento: biblioteca_datos.departamento
      Biblioteca reporte: biblioteca_datos.biblioteca_consulta
    row: 40
    col: 0
    width: 8
    height: 6
  filters:
  - name: Medio De Preferenica De Aviso
    title: Medio De Preferenica De Aviso
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: popover
    model: demo_biblioteca
    explore: biblioteca_datos
    listens_to_filters: []
    field: biblioteca_datos.medio_de_preferenica_de_aviso
  - name: Departamento
    title: Departamento
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: demo_biblioteca
    explore: biblioteca_datos
    listens_to_filters: []
    field: biblioteca_datos.departamento
  - name: Biblioteca reporte
    title: Biblioteca reporte
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: demo_biblioteca
    explore: biblioteca_datos
    listens_to_filters: []
    field: biblioteca_datos.biblioteca_consulta
