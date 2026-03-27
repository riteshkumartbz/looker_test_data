connection: "ritesh_neon_connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_model1_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_model1_default_datagroup

explore: looker_test_data {}

