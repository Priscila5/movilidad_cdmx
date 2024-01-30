view: trolebus {
  sql_table_name: `afluencia_movilidad_cdmx.trolebus` ;;

  dimension: afluencia {
    type: number
    sql: ${TABLE}.afluencia ;;
  }
  dimension: anio {
    type: number
    sql: ${TABLE}.anio ;;
  }
  dimension_group: fecha {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.fecha ;;
  }
  dimension: linea {
    type: string
    sql: ${TABLE}.linea ;;
  }
  dimension: mes {
    type: string
    sql: ${TABLE}.mes ;;
  }
  dimension: tipo_pago {
    type: string
    sql: ${TABLE}.tipo_pago ;;
  }
  measure: count {
    type: count
  }
}
