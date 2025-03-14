# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.products ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Barcode" in Explore.

  dimension: barcode {
    type: string
    sql: ${TABLE}."barcode" ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}."brand" ;;
  }

  dimension: categories {
    type: string
    sql: ${TABLE}."categories" ;;
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

  dimension: discount_price {
    type: number
    sql: ${TABLE}."discountPrice" ;;
  }

  dimension: discount_price_currency {
    type: string
    sql: ${TABLE}."discountPriceCurrency" ;;
  }

  dimension: expiry_date {
    type: string
    sql: ${TABLE}."expiryDate" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: images {
    type: string
    sql: ${TABLE}."images" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: quantity_type {
    type: string
    sql: ${TABLE}."Quantity_type" ;;
  }

  dimension: sku_code {
    type: string
    sql: ${TABLE}."sku_code" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}."supplier" ;;
  }

  dimension: unit {
    type: string
    sql: ${TABLE}."unit" ;;
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

  dimension: variant {
    type: string
    sql: ${TABLE}."variant" ;;
  }

  dimension: variant_options {
    type: string
    sql: ${TABLE}."variant_options" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
