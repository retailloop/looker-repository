# The name of this view in Looker is "Sales Report"
view: sales_report {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.sales_report ;;

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
    # This dimension will be called "Discount" in Explore.

  dimension: discount {
    type: number
    sql: ${TABLE}."discount" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."product" ;;
  }

  dimension: quantity_sold {
    type: number
    sql: ${TABLE}."quantity_sold" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: total_revenue {
    type: number
    sql: ${TABLE}."total_revenue" ;;
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
