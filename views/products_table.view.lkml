# The name of this view in Looker is "Products Table"
view: products_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.products_table ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Attachments" in Explore.

  dimension: attachments {
    type: string
    sql: ${TABLE}."attachments" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: delivery_lead_times {
    type: string
    sql: ${TABLE}."delivery_lead_times" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."description" ;;
  }

  dimension: do_not_ship {
    type: yesno
    sql: ${TABLE}."do_not_ship" ;;
  }

  dimension: do_not_track {
    type: yesno
    sql: ${TABLE}."do_not_track" ;;
  }

  dimension: hs_tariff_number {
    type: string
    sql: ${TABLE}."hs_tariff_number" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}."image_url" ;;
  }

  dimension: image_urlb {
    type: string
    sql: ${TABLE}."image_urlb" ;;
  }

  dimension: image_urlc {
    type: string
    sql: ${TABLE}."image_urlc" ;;
  }

  dimension: image_urld {
    type: string
    sql: ${TABLE}."image_urld" ;;
  }

  dimension: inventory {
    type: string
    sql: ${TABLE}."inventory" ;;
  }

  dimension: metadata {
    type: string
    sql: ${TABLE}."metadata" ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}."mode" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: piece_per_pack {
    type: number
    sql: ${TABLE}."piece_per_pack" ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}."price" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: self {
    type: string
    sql: ${TABLE}."self" ;;
  }

  dimension: shipping_category {
    type: string
    sql: ${TABLE}."shipping_category" ;;
  }

  dimension: sku_options {
    type: string
    sql: ${TABLE}."sku_options" ;;
  }

  dimension: stock_items {
    type: string
    sql: ${TABLE}."stock_items" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."type" ;;
  }

  dimension: unit_of_weight {
    type: string
    sql: ${TABLE}."unit_of_weight" ;;
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

  dimension: weight {
    type: number
    sql: ${TABLE}."weight" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
