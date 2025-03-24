# The name of this view in Looker is "Orders"
view: orders {
  sql_table_name: public.orders ;;

  dimension: amount_outstanding {
    type: string
    sql: ${TABLE}."amountOutstanding" ;;
  }

  dimension: amount_received {
    type: string
    sql: ${TABLE}."amountReceived" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}."customer_id" ;;
  }

  dimension_group: date_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."date_created" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: payment_type {
    type: string
    sql: ${TABLE}."paymentType" ;;
  }

  dimension: shipping {
    type: string
    sql: ${TABLE}."shipping" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}."total_amount" ;;
  }

  dimension: unique_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."unique_id" ;;
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

  measure: total_orders {
    type: count_distinct
    sql: ${unique_id} ;;
  }

  measure: processed_transactions {
    type: count_distinct
    sql: ${unique_id} ;;
    filters: [status: "success"]
  }

  measure: total_revenue {
    type: sum
    value_format_name: decimal_2
    sql: CAST(${total_amount} AS FLOAT) ;;
  }

  measure: avg_order_value {
    type: average
    value_format_name: decimal_2
    sql: CAST(${total_amount} AS FLOAT) ;;
  }
}
