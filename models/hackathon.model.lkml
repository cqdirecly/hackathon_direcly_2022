# Define the database connection to be used for this model.
connection: "gtech"

# include all the views
include: "/views/**/*.view"


# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hackathon_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hackathon_default_datagroup

map_layer: colombia_map {
  file: "../assets/Colombia_geo.json"
  property_key: "NOMBRE_DPT"
  format: topojson
}

explore: pruebas_saber_11 {
  join: ranking_state {
    type: left_outer
    sql_on: ${pruebas_saber_11.cole_depto_ubicacion} = ${ranking_state.state} ;;
    relationship: many_to_one

  }

}

explore: scores {}
