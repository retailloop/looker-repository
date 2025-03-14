# The name of this view in Looker is "Order Products"
view: order_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.order_products ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "ID" in Explore.

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."is_active" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }
  measure: count {
    type: count
  }
}
