connection: "biblioteca"

# include all the views
include: "/views/**/*.view"

datagroup: intento1_default_datagroup {
  #sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}


persist_with: intento1_default_datagroup



explore: biblioteca_datos {
 # fields: [biblioteca_datos.item, biblioteca_datos.departamento,biblioteca_datos.cantidad_consultas]
  description: "no quiero"

  #always_filter: {
   # filters: [biblioteca_datos.departamento: "BOYACA"]
  #}
}

#explore: datos_biblioteca {}

#explore: datos {}

#explore: lugar_de_los_datos {}
