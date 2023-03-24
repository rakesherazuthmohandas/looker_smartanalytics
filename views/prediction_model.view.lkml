# The name of this view in Looker is "Prediction Model"
view: prediction_model {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Banking.prediction_model`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer Segment" in Explore.

  dimension: customer_segment {
    type: string
    sql: ${TABLE}.Customer_Segment ;;
  }

  dimension: first_best_campaign {
    type: string
    sql: ${TABLE}.First_Best_Campaign ;;
  }

  dimension: first_best_campaign_propensity {
    type: number
    sql: ${TABLE}.First_Best_Campaign_Propensity ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_first_best_campaign_propensity {
    type: sum
    sql: ${first_best_campaign_propensity} ;;
  }

  measure: average_first_best_campaign_propensity {
    type: average
    sql: ${first_best_campaign_propensity} ;;
  }

  dimension: galaxy_s7_predicted_response {
    type: yesno
    sql: ${TABLE}.Galaxy_S7_Predicted_Response ;;
  }

  dimension: galaxy_s7_predicted_response_propensity {
    type: number
    sql: ${TABLE}.Galaxy_S7_Predicted_Response_Propensity ;;
  }

  dimension: rfm_score {
    type: number
    sql: ${TABLE}.RFM_Score ;;
  }

  dimension: samsung_smart_club {
    type: number
    sql: ${TABLE}.Samsung_Smart_Club ;;
  }

  dimension: second_best_campaign {
    type: string
    sql: ${TABLE}.Second_Best_Campaign ;;
  }

  dimension: second_best_campaign_propensity {
    type: number
    sql: ${TABLE}.Second_Best_Campaign_Propensity ;;
  }

  dimension: third_best_campaign {
    type: string
    sql: ${TABLE}.Third_Best_Campaign ;;
  }

  dimension: third_best_campaign_propensity {
    type: number
    sql: ${TABLE}.Third_Best_Campaign_Propensity ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
