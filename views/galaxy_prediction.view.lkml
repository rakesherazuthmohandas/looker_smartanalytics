# The name of this view in Looker is "Galaxy Prediction"
view: galaxy_prediction {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Banking.galaxy_prediction`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Customer Segment" in Explore.

  dimension: customer_segment {
    type: string
    sql: ${TABLE}.Customer_segment ;;
  }

  dimension: frequency {
    type: number
    sql: ${TABLE}.Frequency ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_frequency {
    type: sum
    sql: ${frequency} ;;
  }

  measure: average_frequency {
    type: average
    sql: ${frequency} ;;
  }

  dimension: frequency_score {
    type: number
    sql: ${TABLE}.Frequency_Score ;;
  }

  dimension: galaxy {
    type: yesno
    sql: ${TABLE}.Galaxy ;;
  }

  dimension: galaxy_s20_prediction {
    type: yesno
    sql: ${TABLE}.Galaxy_S20_Prediction ;;
  }

  dimension: galaxy_s20_prediction_propensity {
    type: number
    sql: ${TABLE}.Galaxy_S20_PRediction_propensity ;;
  }

  dimension: home_appliance {
    type: yesno
    sql: ${TABLE}.Home_Appliance ;;
  }

  dimension: it {
    type: yesno
    sql: ${TABLE}.IT ;;
  }

  dimension: mobile_devices {
    type: yesno
    sql: ${TABLE}.Mobile_Devices ;;
  }

  dimension: monetary {
    type: number
    sql: ${TABLE}.Monetary ;;
  }

  dimension: monetary_score {
    type: number
    sql: ${TABLE}.Monetary_Score ;;
  }

  dimension: partition {
    type: string
    sql: ${TABLE}.`Partition` ;;
  }

  dimension: recency {
    type: number
    sql: ${TABLE}.Recency ;;
  }

  dimension: recency_score {
    type: number
    sql: ${TABLE}.Recency_Score ;;
  }

  dimension: rfm_score {
    type: number
    sql: ${TABLE}.RFM_Score ;;
  }

  dimension: samsung_smart_club {
    type: number
    sql: ${TABLE}.Samsung_Smart_Club ;;
  }

  dimension: tv_av {
    type: yesno
    sql: ${TABLE}.TV_AV ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
