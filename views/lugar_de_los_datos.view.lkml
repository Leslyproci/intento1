view: lugar_de_los_datos {
  sql_table_name: `Demo.Lugar_de_los_datos`
    ;;

  dimension: codigo_biblioteca_1 {
    label: "Codigo Biblioteca"
    type: string
    sql: ${TABLE}.Codigo_biblioteca_1 ;;
  }

  dimension: departamento {
    label: "Departamento"
    type: string
    sql: ${TABLE}.Departamento ;;
  }

  #dimension: georeferencia {
   # type: string
  #  sql: ${TABLE}.Georeferencia ;;
  #}

  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }

  dimension: nombre {
    label: "Nombre"
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
