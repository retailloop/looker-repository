# The name of this view in Looker is "Subscriptions"
view: subscriptions {
  sql_table_name: public.subscriptions ;;

  dimension: pk {
    primary_key: yes
    type: string
    sql: CONCAT(CAST(${subscription_code} AS TEXT), CAST(${user_id} AS TEXT)) ;;
  }


  dimension: amount_paid {
    type: string
    sql: CAST(${TABLE}."amount_paid" AS INTEGER) ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}."end_date" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: paid_at {
    type: string
    sql: ${TABLE}."paid_at" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."reference" ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}."start_date" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  dimension: subscription_code {
    type: string
    sql: ${TABLE}."subscription_code" ;;
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

  measure: total_revenue {
    type: sum
    sql: ${amount_paid} ;;
  }

  measure: count {
    type: count
  }
}
