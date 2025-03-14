# The name of this view in Looker is "Users Table"
view: users_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.users_table ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Name" in Explore.

  dimension: account_name {
    type: string
    sql: ${TABLE}."accountName" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."accountNumber" ;;
  }

  dimension: bank_code {
    type: string
    sql: ${TABLE}."bankCode" ;;
  }

  dimension: brand_photo {
    type: string
    sql: ${TABLE}."brandPhoto" ;;
  }

  dimension: business_industry {
    type: string
    sql: ${TABLE}."business_industry" ;;
  }

  dimension: business_name {
    type: string
    sql: ${TABLE}."business_name" ;;
  }

  dimension: business_registered {
    type: string
    sql: ${TABLE}."business_registered" ;;
  }

  dimension: business_tin {
    type: string
    sql: ${TABLE}."business_tin" ;;
  }

  dimension: business_website {
    type: string
    sql: ${TABLE}."business_website" ;;
  }

  dimension: cac_number {
    type: number
    sql: ${TABLE}."cac_number" ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}."contact_name" ;;
  }

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

  dimension: currency {
    type: string
    sql: ${TABLE}."currency" ;;
  }

  dimension: current_role {
    type: string
    sql: ${TABLE}."current_role" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_verified {
    type: yesno
    sql: ${TABLE}."is_verified" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: members_id {
    type: number
    sql: ${TABLE}."members_id" ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }

  dimension: personal_photo {
    type: string
    sql: ${TABLE}."personalPhoto" ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}."phone_number" ;;
  }

  dimension: rc_number {
    type: number
    sql: ${TABLE}."rc_number" ;;
  }

  dimension: reset_token {
    type: string
    sql: ${TABLE}."reset_token" ;;
  }

  dimension: sub_account_code {
    type: string
    sql: ${TABLE}."subAccountCode" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }
  measure: count {
    type: count
    drill_fields: [account_name, contact_name, last_name, business_name, first_name]
  }
}
