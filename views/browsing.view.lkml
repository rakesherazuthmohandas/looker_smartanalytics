# The name of this view in Looker is "Browsing"
view: browsing {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Banking.Browsing`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amt Spent Online" in Explore.

  dimension: amt_spent_online {
    type: number
    sql: ${TABLE}.amt_spent_online ;;
  }

  dimension: avg_num_pages_per_visit {
    type: number
    sql: ${TABLE}.avg_num_pages_per_visit ;;
  }

  dimension: avg_quarterly_visits {
    type: number
    sql: ${TABLE}.avg_quarterly_visits ;;
  }

  dimension: avg_visit_duration {
    type: number
    sql: ${TABLE}.avg_visit_duration ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_avg_visit_duration {
    type: sum
    sql: ${avg_visit_duration} ;;
  }

  measure: average_avg_visit_duration {
    type: average
    sql: ${avg_visit_duration} ;;
  }

  dimension: browse_cat_desc {
    type: string
    sql: ${TABLE}.browse_cat_desc ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date_of_last_online_purch {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_of_last_online_purch ;;
  }

  dimension_group: date_of_last_online_visit {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_of_last_online_visit ;;
  }

  dimension: days_since_last_visit {
    type: number
    sql: ${TABLE}.days_since_last_visit ;;
  }

  dimension: hhold_id {
    type: number
    sql: ${TABLE}.HHold_ID ;;
  }

  dimension: individual_id {
    type: number
    sql: ${TABLE}.Individual_ID ;;
  }

  dimension: last_search_id_desc {
    type: string
    sql: ${TABLE}.last_search_id_desc ;;
  }

  dimension: most_recent_browsed_category {
    type: string
    sql: ${TABLE}.most_recent_browsed_category ;;
  }

  dimension: num_visits_last_15_days {
    type: number
    sql: ${TABLE}.num_visits_last_15Days ;;
  }

  dimension: num_visits_last_30_days {
    type: number
    sql: ${TABLE}.num_visits_last_30Days ;;
  }

  dimension: num_visits_last_3_months {
    type: number
    sql: ${TABLE}.num_visits_last_3Months ;;
  }

  dimension: num_visits_last_7_days {
    type: number
    sql: ${TABLE}.num_visits_last_7Days ;;
  }

  dimension: online_buyer_flag {
    type: yesno
    sql: ${TABLE}.online_buyer_flag ;;
  }

  dimension: online_seg_desc {
    type: string
    sql: ${TABLE}.online_seg_desc ;;
  }

  dimension: web_event_desc {
    type: string
    sql: ${TABLE}.web_event_desc ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
