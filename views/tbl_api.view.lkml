# The name of this view in Looker is "Tbl API"
view: tbl_api {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.tbl_api ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "API Key" in Explore.

  dimension: api_key {
    type: string
    sql: ${TABLE}."api_key" ;;
  }

  dimension: api_secret {
    type: string
    sql: ${TABLE}."api_secret" ;;
  }

  dimension: call_count {
    type: number
    sql: ${TABLE}."call_count" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: environment {
    type: string
    sql: ${TABLE}."environment" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  dimension: threshold {
    type: number
    sql: ${TABLE}."threshold" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
  }
}
