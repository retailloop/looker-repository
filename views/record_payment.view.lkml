# The name of this view in Looker is "Record Payment"
view: record_payment {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.record_payment ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: payment_date {
    type: string
    sql: ${TABLE}."paymentDate" ;;
  }

  dimension: payment_made {
    type: number
    sql: ${TABLE}."paymentMade" ;;
  }

  dimension: payment_method {
    type: string
    sql: ${TABLE}."paymentMethod" ;;
  }

  dimension: purchase_order_id {
    type: number
    sql: ${TABLE}."purchaseOrderId" ;;
  }

  dimension: unique_id {
    type: string
    sql: ${TABLE}."uniqueId" ;;
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

  dimension: vendor {
    type: string
    sql: ${TABLE}."vendor" ;;
  }
  measure: count {
    type: count
  }
}
