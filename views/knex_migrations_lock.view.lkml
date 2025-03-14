# The name of this view in Looker is "Knex Migrations Lock"
view: knex_migrations_lock {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.knex_migrations_lock ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Index" in Explore.

  dimension: index {
    type: number
    sql: ${TABLE}."index" ;;
  }

  dimension: is_locked {
    type: number
    sql: ${TABLE}."is_locked" ;;
  }
  measure: count {
    type: count
  }
}
