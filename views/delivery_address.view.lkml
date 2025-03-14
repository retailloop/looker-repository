# The name of this view in Looker is "Delivery Address"
view: delivery_address {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.deliveryAddress ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address ID" in Explore.

  dimension: address_id {
    type: string
    sql: ${TABLE}."address_id" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."city" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."country" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: is_residential {
    type: string
    sql: ${TABLE}."is_residential" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: line1 {
    type: string
    sql: ${TABLE}."line1" ;;
  }

  dimension: line2 {
    type: string
    sql: ${TABLE}."line2" ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}."metadata" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: package_type {
    type: string
    sql: ${TABLE}."packageType" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension: place_id {
    type: string
    sql: ${TABLE}."place_id" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: ship_id {
    type: string
    sql: ${TABLE}."ship_id" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}."zip" ;;
  }
  measure: count {
    type: count
    drill_fields: [name, last_name, first_name]
  }
}
