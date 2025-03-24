# Define the database connection to be used for this model.
connection: "data_analytics_retailloop"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: retailloop_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: retailloop_default_datagroup

explore: subscriptions {
  join: users_table {
    type: left_outer
    relationship: many_to_one
    sql_on: ${subscriptions.user_id}=${users_table.id} ;;
  }
}

explore: orders {}

explore: customers_table {}
