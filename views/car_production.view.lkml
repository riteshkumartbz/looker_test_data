view: car_production {
  sql_table_name: public.car_production ;;

  dimension: assembly_line_id {
    type: string
    sql: ${TABLE}."assembly_line_id" ;;
  }
  dimension: body_style {
    type: string
    sql: ${TABLE}."body_style" ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }
  dimension: curb_weight_kg {
    type: number
    sql: ${TABLE}."curb_weight_kg" ;;
  }
  dimension: engine_capacity_cc {
    type: number
    sql: ${TABLE}."engine_capacity_cc" ;;
  }
  dimension: exterior_color {
    type: string
    sql: ${TABLE}."exterior_color" ;;
  }
  dimension: fuel_type {
    type: string
    sql: ${TABLE}."fuel_type" ;;
  }
  dimension: is_quality_passed {
    type: yesno
    sql: ${TABLE}."is_quality_passed" ;;
  }
  dimension: manufacturing_plant {
    type: string
    sql: ${TABLE}."manufacturing_plant" ;;
  }
  dimension: market_price_usd {
    type: number
    sql: ${TABLE}."market_price_usd" ;;
  }
  dimension: model_name {
    type: string
    sql: ${TABLE}."model_name" ;;
  }
  dimension: model_year {
    type: number
    sql: ${TABLE}."model_year" ;;
  }
  dimension_group: production_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."production_timestamp" ;;
  }
  dimension: transmission_type {
    type: string
    sql: ${TABLE}."transmission_type" ;;
  }
  dimension: vin {
    type: string
    sql: ${TABLE}."vin" ;;
  }
  measure: count {
    type: count
    drill_fields: [model_name]
  }
}
