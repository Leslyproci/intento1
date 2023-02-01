view: biblioteca_datos {
  sql_table_name: `Demo.biblioteca_datos`
    ;;

  dimension: anio_registro_usuario_sistema {
    type: number
    sql: ${TABLE}.Anio_registro_usuario_sistema ;;
  }
dimension: intento {

}
  dimension: biblioteca_consulta {
    type: string
    sql: ${TABLE}.Biblioteca_consulta ;;
  }

  dimension: cantidad_consultas {
    type: number
    sql: ${TABLE}.Cantidad_consultas ;;
  }

  dimension: codigo_biblioteca {
    type: string
    sql: ${TABLE}.Codigo_biblioteca ;;
  }

  dimension: codigo_biblioteca_1 {
    type: string
    sql: ${TABLE}.Codigo_biblioteca_1 ;;
  }

  dimension: codigo_de_preferencia_de_aviso {
    type: string
    sql: ${TABLE}.Codigo_de_preferencia_de_aviso ;;
  }

  dimension: codigo_universidad {
    type: number
    sql: ${TABLE}.Codigo_universidad ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.Departamento ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }
  parameter: dates_granularity {
    hidden: yes
    type: unquoted
    allowed_value: { label: "Date" value: "date" }
    allowed_value: { label: "Week" value: "week" }
    allowed_value: { label: "Month" value: "month" }
    allowed_value: { label: "Quarter" value: "quarter" }
    allowed_value: { label: "Year" value: "year" }
    allowed_value: {label: "Raw" value:"raw"}
  }
  dimension_group: created_at {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year, day_of_week, day_of_month]
    sql: ${TABLE}.Fecha ;;
  }

  dimension: order_created_at_granularity {
    description: "Use it in conjunction with Dates Granularity Filter"
    sql:
      {% if dates_granularity.Fecha == 'date' %} ${created_at_date}
      {% elsif dates_granularity.Fecha == 'week' %} ${created_at_week}
      {% elsif dates_granularity.Fecha == 'month' %} ${created_at_month}
      {% elsif dates_granularity.Fecha == 'quarter' %} ${created_at_quarter}
      {% elsif dates_granularity.Fecha == 'year' %} ${created_at_year}
      {% elsif dates_granularity.Fecha == 'raw' %} ${created_at_raw}
      {% else %} ${created_at_date}
      {% endif %};;
  }

  dimension: georeferencia {
    type: string
    sql: ${TABLE}.Georeferencia ;;
  }

  dimension: item {
    type: number
    sql: ${TABLE}.Item ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }

  dimension: medio_de_preferenica_de_aviso {
    type: string
    sql: ${TABLE}.Medio_de_preferenica_de_aviso ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: proporciono_direccion_de_correo {
    type: string
    sql: ${TABLE}.Proporciono_direccion_de_correo ;;
  }

  dimension: reservas_totales {
    type: number
    sql: ${TABLE}.Reservas_totales ;;
  }

  dimension: universidad {
    type: string
    sql: ${TABLE}.Universidad ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
