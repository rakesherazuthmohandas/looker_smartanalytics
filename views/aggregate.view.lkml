# The name of this view in Looker is "Aggregate"
view: aggregate {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Banking.aggregate`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Avg Slot Usage Views" in Explore.

  dimension: avg_slot_usage_views {
    type: number
    sql: ${TABLE}.AVG_SLOT_USAGE_views ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_slot_usage_views {
    type: sum
    sql: ${avg_slot_usage_views} ;;
  }

  measure: average_avg_slot_usage_views {
    type: average
    sql: ${avg_slot_usage_views} ;;
  }

  dimension: project_id {
    type: string
    sql: ${TABLE}.project_id ;;
  }

  dimension: query {
    type: string
    sql: ${TABLE}.query ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
