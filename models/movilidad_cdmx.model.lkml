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

explore: metro {
  join: trolebus{
    sql_on: ${metro.fecha_date}=${trolebus.fecha_date} ;;
    type: left_outer
    relationship: many_to_one

  }
  join: tren_ligero {
    sql_on: ${metro.fecha_date}=${tren_ligero.fecha_date}  ;;
    type: left_outer
    relationship: many_to_one
  }
  join: cablebus {
    sql_on: ${metro.fecha_date}=${cablebus.fecha_date} ;;
    type: left_outer
    relationship: many_to_one
  }
}

explore: cablebus {}
