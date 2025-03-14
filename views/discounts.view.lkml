# The name of this view in Looker is "Discounts"
view: discounts {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.discounts ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: close {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."close_date" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Customer ID" in Explore.

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."discount" ;;
  }

  dimension: discount_code {
    type: string
    sql: ${TABLE}."discount_code" ;;
  }

  dimension: discount_description {
    type: string
    sql: ${TABLE}."discount_description" ;;
  }

  dimension: discount_type {
    type: string
    sql: ${TABLE}."discount_type" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."is_active" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: redemption_limit {
    type: number
    sql: ${TABLE}."redemption_limit" ;;
  }

  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."start_date" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
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

  dimension: valid_locations {
    type: string
    sql: ${TABLE}."valid_locations" ;;
  }
  measure: count {
    type: count
  }
}
