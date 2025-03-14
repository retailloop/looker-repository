# The name of this view in Looker is "Parcel"
view: parcel {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.parcel ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: items {
    type: string
    sql: ${TABLE}."items" ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}."metadata" ;;
  }

  dimension: packaging {
    type: string
    sql: ${TABLE}."packaging" ;;
  }

  dimension: parcel_id {
    type: string
    sql: ${TABLE}."parcel_id" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: ship_id {
    type: string
    sql: ${TABLE}."ship_id" ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}."weight_unit" ;;
  }
  measure: count {
    type: count
  }
}
