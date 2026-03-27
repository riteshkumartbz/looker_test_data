connection: "ritesh_neon_connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_model1_default_datagroup {
  max_cache_age: "1 hour"
}

persist_with: looker_model1_default_datagroup

# Existing Explore
explore: looker_test_data {}

# Add this new Explore for the cars data
explore: car_production {
  label: "Car Manufacturing Data"
}
