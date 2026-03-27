view: looker_test_data {
  sql_table_name: public.looker_test_data ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  dimension: value {
    type: number
    sql: ${TABLE}."value" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
