view: biblioteca_datos {
  sql_table_name: `Demo.biblioteca_datos`
    ;;

  dimension: anio_registro_usuario_sistema {
    label: "anio_registro_usuario_sistema"
    type: number
    sql: ${TABLE}.Anio_registro_usuario_sistema ;;
  }

  dimension: biblioteca_consulta {
    label: "biblioteca_consulta"
    type: string
    sql: ${TABLE}.Biblioteca_consulta ;;
  }

  dimension: cantidad_consultas {
    label: "cantidad_consultas"
    type: number
    sql: ${TABLE}.Cantidad_consultas ;;
  }

  dimension: codigo_biblioteca {
    label: "codigo_biblioteca"
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
    label: "departamento"
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
  parameter: date_granularity {
    type: unquoted
    allowed_value: {
      label: "Week"
      value: "week"
    }
    allowed_value: {
      label: "Month"
      value: "month"
    }
  }

  dimension: date {
    sql:
    {% if date_granularity._parameter_value == 'week' %}
      ${fecha_week}
    {% elsif date_granularity._parameter_value == 'month' %}
      ${fecha_month}
    {% else %}
      ${fecha_date}
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
  #busque la palabra en internet
  dimension: medio_con_link {
    sql: ${TABLE}.Medio_de_preferenica_de_aviso ;;
    link: {
      label: "Google"
      url: "https://www.google.com/search?q={{ value }}"
      icon_url: "https://google.com/favicon.ico"
    }
  }

  dimension: title_1 {
    type: string
    sql: ${medio_de_preferenica_de_aviso} ;;
    html: <h1>Dashboard: {{rendered_value}}</h1> ;;
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
