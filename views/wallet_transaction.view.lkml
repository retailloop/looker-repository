# The name of this view in Looker is "Wallet Transaction"
view: wallet_transaction {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.wallet_transaction ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    sql: ${TABLE}."account_id" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."account_number" ;;
  }

  dimension: amount_sent {
    type: number
    sql: ${TABLE}."amount_sent" ;;
  }

  dimension: bankcode {
    type: string
    sql: ${TABLE}."bankcode" ;;
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

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: narration {
    type: string
    sql: ${TABLE}."narration" ;;
  }

  dimension: purchase_reference {
    type: string
    sql: ${TABLE}."purchase_reference" ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}."query" ;;
  }

  dimension: sender_name {
    type: string
    sql: ${TABLE}."sender_name" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
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
    drill_fields: [sender_name]
  }
}
