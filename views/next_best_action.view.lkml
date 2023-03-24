# The name of this view in Looker is "Next Best Action"
view: next_best_action {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Banking.next_best_action`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "First Best Product" in Explore.

  dimension: first_best_product {
    type: string
    sql: ${TABLE}.First_Best_Product ;;
  }

  dimension: first_best_product_propensity {
    type: number
    sql: ${TABLE}.First_Best_Product_Propensity ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_first_best_product_propensity {
    type: sum
    sql: ${first_best_product_propensity} ;;
  }

  measure: average_first_best_product_propensity {
    type: average
    sql: ${first_best_product_propensity} ;;
  }

  dimension: samsung_smart_club {
    type: number
    sql: ${TABLE}.Samsung_Smart_Club ;;
  }

  dimension: second_best_product {
    type: string
    sql: ${TABLE}.Second_Best_Product ;;
  }

  dimension: second_best_product_propensity {
    type: number
    sql: ${TABLE}.Second_Best_Product_Propensity ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.Segment ;;
  }

  dimension: third_best_product_propensity {
    type: number
    sql: ${TABLE}.Third_Best_Product_Propensity ;;
  }

  dimension: thrid_best_product {
    type: string
    sql: ${TABLE}.Thrid_Best_Product ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
