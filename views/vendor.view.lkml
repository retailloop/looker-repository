# The name of this view in Looker is "Vendor"
view: vendor {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.vendor ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Company Name" in Explore.

  dimension: company_name {
    type: string
    sql: ${TABLE}."companyName" ;;
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

  dimension: discount {
    type: string
    sql: ${TABLE}."discount" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."firstName" ;;
  }

  dimension: id {
    type: string
    sql: ${TABLE}."id" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."lastName" ;;
  }

  dimension: payment_terms {
    type: string
    sql: ${TABLE}."paymentTerms" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phoneNumber" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."status" ;;
  }

  dimension: tax_rate {
    type: string
    sql: ${TABLE}."taxRate" ;;
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

  dimension: website {
    type: string
    sql: ${TABLE}."website" ;;
  }
  measure: count {
    type: count
    drill_fields: [company_name, first_name, last_name]
  }
}
