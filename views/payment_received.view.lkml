# The name of this view in Looker is "Payment Received"
view: payment_received {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.payment_received ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount Received" in Explore.

  dimension: amount_received {
    type: number
    sql: ${TABLE}."amountReceived" ;;
  }

  dimension: balance {
    type: number
    sql: ${TABLE}."balance" ;;
  }

  dimension: billing_address {
    type: string
    sql: ${TABLE}."billingAddress" ;;
  }

  dimension: change {
    type: number
    sql: ${TABLE}."change" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: customer {
    type: string
    sql: ${TABLE}."customer" ;;
  }

  dimension: email_address {
    type: string
    sql: ${TABLE}."emailAddress" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: outstanding_payment {
    type: number
    sql: ${TABLE}."outstandingPayment" ;;
  }

  dimension: payment_date {
    type: string
    sql: ${TABLE}."paymentDate" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."paymentMethod" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phoneNumber" ;;
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
  measure: count {
    type: count
  }
}
