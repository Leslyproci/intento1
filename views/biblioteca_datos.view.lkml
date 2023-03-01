view: biblioteca_datos {
  sql_table_name: `Demo.biblioteca_datos`
    ;;

  dimension: anio_registro_usuario_sistema {
    type: number
    sql: ${TABLE}.Anio_registro_usuario_sistema ;;
  }

  dimension: biblioteca_consulta {
    label: "biblioteca_consulta"
    type: string
    sql: ${TABLE}.Biblioteca_consulta ;;
  }

  dimension: cantidad_consultas {
    type: number
    sql: ${TABLE}.Cantidad_consultas ;;
  }

  dimension: codigo_biblioteca {
    label: "Codigo biblioteca"
    type: string
    sql: ${TABLE}.Codigo_biblioteca ;;
  }

 # dimension: codigo_biblioteca_1 {
 #   type: string
  #  sql: ${TABLE}.Codigo_biblioteca_1 ;;
  # }

 dimension: codigo_de_preferencia_de_aviso {
    label: "Codigo aviso"
    type: string
    sql: ${TABLE}.Codigo_de_preferencia_de_aviso ;;
  }

  dimension: codigo_universidad {
    label: "codigo_universidad"
    type: number
    sql: ${TABLE}.Codigo_universidad ;;
  }

  dimension: departamento {
   label: "Departamento"
   type: string
   sql: ${TABLE}.Departamento ;;
  }

  dimension_group: fecha {
    type: time
    view_label: "_PoP"
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      month_num,
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

  #dimension: georeferencia {
   # type: string
  #  sql: ${TABLE}.Georeferencia ;;
  #}

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
    label: "Medio aviso"
    type: string
    sql: ${TABLE}.Medio_de_preferenica_de_aviso;;
  }
 # dimension: aviso_por_email {
  #  label: "Aviso por email"
  #  type: string
  #  sql: WHEN ${codigo_de_preferencia_de_aviso} = 'a' THEN '{{ _localization['impreso'] }}'
   #      WHEN ${codigo_de_preferencia_de_aviso} = 'p' THEN '{{ _localization['mensaje texto'] }}'
    #     ELSE '{{ _localization['email'] }}'
     #    END ;;
  #}
  #busque la palabra en internet
  dimension: medio_con_link {
    label: "Link medio"
    sql: ${TABLE}.Medio_de_preferenica_de_aviso ;;
    link: {
      label: "Google"
      url: "https://www.google.com/search?q={{ value }}"
      icon_url: "https://google.com/favicon.ico"
    }
  }

 # dimension: title_1 {
  #  type: string
   # sql: ${medio_de_preferenica_de_aviso} ;;
   # html: <h1>Dashboard: {{rendered_value}}</h1> ;;
  #}

  dimension: nombre {
    label: "Nombre"
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  #dimension: proporciono_direccion_de_correo {
   # type: string
  #  sql: ${TABLE}.Proporciono_direccion_de_correo ;;
  #}

  dimension: reservas_totales {
    type: number
    sql: ${TABLE}.Reservas_totales ;;
  }

  dimension: universidad {
    label: "Universidad"
    type: string
    sql: ${TABLE}.Universidad ;;
  }



  measure: count {
    type: count
    drill_fields: []
  }
}
