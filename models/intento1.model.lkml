connection: "biblioteca"

# include all the views
include: "/views/**/*.view"

datagroup: intento1_default_datagroup {
  #sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: intento1_default_datagroup

explore: biblioteca_datos {
  fields: [codigo_biblioteca,fecha_date, anio_registro_usuario_sistema]
  description: "no quiero"
}

explore: datos_biblioteca {}

explore: datos {}

explore: lugar_de_los_datos {}
