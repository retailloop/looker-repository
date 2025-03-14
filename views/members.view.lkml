# The name of this view in Looker is "Members"
view: members {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.members ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."created_at" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Current Role" in Explore.

  dimension: current_role {
    type: string
    sql: ${TABLE}."current_role" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."is_active" ;;
  }

  dimension: member_id {
    type: number
    sql: ${TABLE}."member_id" ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}."password" ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}."store_id" ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}."store_name" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: user_member_id {
    type: number
    sql: ${TABLE}."user_member_id" ;;
  }
  measure: count {
    type: count
    drill_fields: [store_name]
  }
}
