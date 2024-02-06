connection: "afluencia_movilidad"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: movilidad_cdmx_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: movilidad_cdmx_default_datagroup

explore: trolebus {}

explore: tren_ligero {}

explore: metro {}

explore: cablebus {}
