# The name of this view in Looker is "API Limit"
view: api_limit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.apiLimit ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "API Limit" in Explore.

  dimension: api_limit {
    type: number
    sql: ${TABLE}."apiLimit" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: reference {
    type: string
    sql: ${TABLE}."reference" ;;
  }

  dimension: subscription_code {
    type: string
    sql: ${TABLE}."subscriptionCode" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."user_id" ;;
  }
  measure: count {
    type: count
  }
}
