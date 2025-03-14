# The name of this view in Looker is "Shipping"
view: shipping {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.shipping ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Country" in Explore.

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}."products" ;;
  }

  dimension: rates {
    type: string
    sql: ${TABLE}."rates" ;;
  }

  dimension: states {
    type: string
    sql: ${TABLE}."states" ;;
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

  dimension: use_shipping {
    type: yesno
    sql: ${TABLE}."useShipping" ;;
  }
  measure: count {
    type: count
  }
}
