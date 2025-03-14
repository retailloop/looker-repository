# The name of this view in Looker is "Packages"
view: packages {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.packages ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Height" in Explore.

  dimension: height {
    type: string
    sql: ${TABLE}."height" ;;
  }

  dimension: length {
    type: string
    sql: ${TABLE}."length" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: packaging_id {
    type: string
    sql: ${TABLE}."packaging_id" ;;
  }

  dimension: product_package_id {
    type: number
    sql: ${TABLE}."product_package_id" ;;
  }

  dimension: size_unit {
    type: string
    sql: ${TABLE}."size_unit" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: user {
    type: string
    sql: ${TABLE}."user" ;;
  }

  dimension: weight {
    type: string
    sql: ${TABLE}."weight" ;;
  }

  dimension: weight_unit {
    type: string
    sql: ${TABLE}."weight_unit" ;;
  }

  dimension: width {
    type: string
    sql: ${TABLE}."width" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
