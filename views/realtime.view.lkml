view: dialogflowparsed_data {
  sql_table_name: `maverick_dialogflow.dialogflowparsed_data` ;;
  derived_table: {
    sql:
      SELECT *
      FROM `maverick_dialogflow.dialogflowparsed_data`
      WHERE TIMESTAMP_DIFF(CURRENT_TIMESTAMP(), timestamp, SECOND) <= 60
    ;;
  }
  drill_fields: [request_id]

  dimension: request_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.request_id ;;
  }

  dimension: agent_intent_used {
    type: string
    sql: ${TABLE}.agent_intent_used ;;
  }

  dimension: agent_response {
    type: string
    sql: ${TABLE}.agent_response ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: channel_of_interaction {
    type: string
    sql: ${TABLE}.channel_of_interaction ;;
  }

  dimension: channel_type {
    type: string
    sql: ${TABLE}.channel_type ;;
  }

  dimension: customer_query {
    type: string
    sql: ${TABLE}.customer_query ;;
  }

  dimension: ingestion_time {
    type: string
    sql: ${TABLE}.ingestion_time ;;
  }

  dimension: lang {
    type: string
    sql: ${TABLE}.lang ;;
  }

  dimension: magnitude_category {
    type: string
    sql: ${TABLE}.magnitude_category ;;
  }

  dimension: magnitude_score {
    type: string
    sql: ${TABLE}.magnitude_score ;;
  }

  dimension: mobilenumber {
    type: string
    sql: ${TABLE}.mobilenumber ;;
  }

  dimension: sentiment_category {
    type: string
    sql: ${TABLE}.sentiment_category ;;
  }

  dimension: sentiment_score {
    type: string
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [request_id]
  }
}
