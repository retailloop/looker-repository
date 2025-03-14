# The name of this view in Looker is "Purchase Orders"
view: purchase_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.purchase_orders ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Company Address" in Explore.

  dimension: company_address {
    type: string
    sql: ${TABLE}."companyAddress" ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}."contactName" ;;
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

  dimension: delivery_date {
    type: string
    sql: ${TABLE}."deliveryDate" ;;
  }

  dimension: discount {
    type: number
    sql: ${TABLE}."discount" ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: payment_terms {
    type: string
    sql: ${TABLE}."paymentTerms" ;;
  }

  dimension: products {
    type: string
    sql: ${TABLE}."products" ;;
  }

  dimension: shipping_address {
    type: string
    sql: ${TABLE}."shippingAddress" ;;
  }

  dimension: status {
    type: yesno
    sql: ${TABLE}."status" ;;
  }

  dimension: sub_total {
    type: number
    sql: ${TABLE}."subTotal" ;;
  }

  dimension: tax {
    type: string
    sql: ${TABLE}."tax" ;;
  }

  dimension: tax_vat {
    type: string
    sql: ${TABLE}."taxVat" ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}."total" ;;
  }

  dimension: total_amount {
    type: number
    sql: ${TABLE}."totalAmount" ;;
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

  dimension: vendor_id {
    type: string
    sql: ${TABLE}."vendor_id" ;;
  }

  dimension: vendor_name {
    type: string
    sql: ${TABLE}."vendorName" ;;
  }
  measure: count {
    type: count
    drill_fields: [vendor_name, contact_name]
  }
}
