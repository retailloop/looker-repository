# The name of this view in Looker is "Knex Migrations"
view: knex_migrations {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: public.knex_migrations ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Batch" in Explore.

  dimension: batch {
    type: number
    sql: ${TABLE}."batch" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: migration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."migration_time" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }
  measure: count {
    type: count
    drill_fields: [name]
  }
}
