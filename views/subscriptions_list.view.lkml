# The name of this view in Looker is "Subscriptions List"
view: subscriptions_list {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.subscriptions_list ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: interval {
    type: string
    sql: ${TABLE}."interval" ;;
  }

  dimension: meta_data {
    type: string
    sql: ${TABLE}."meta_data" ;;
  }

  dimension: plan_code {
    type: string
    sql: ${TABLE}."plan_code" ;;
  }

  dimension: plan_description {
    type: string
    sql: ${TABLE}."plan_description" ;;
  }

  dimension: plan_name {
    type: string
    sql: ${TABLE}."plan_name" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  measure: count {
    type: count
    drill_fields: [plan_name]
  }
}
