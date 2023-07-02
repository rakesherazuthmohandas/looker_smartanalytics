# The name of this view in Looker is "Dialogflowparsed Data"
view: dialogflowparsed_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `maverick_dialogflow.dialogflowparsed_data` ;;
  drill_fields: [request_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: request_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.request_id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agent Intent Used" in Explore.

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
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

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
