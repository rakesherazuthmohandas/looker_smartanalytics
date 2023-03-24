# The name of this view in Looker is "Sample"
view: sample {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Banking.sample`
    ;;
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Addr1" in Explore.

  dimension: addr1 {
    type: string
    sql: ${TABLE}.addr1 ;;
  }

  dimension: address {
    type: number
    sql: ${TABLE}.address ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_address {
    type: sum
    sql: ${address} ;;
  }

  measure: average_address {
    type: average
    sql: ${address} ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: creddebt {
    type: number
    sql: ${TABLE}.creddebt ;;
  }

  dimension: debtinc {
    type: number
    sql: ${TABLE}.debtinc ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dob {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dob ;;
  }

  dimension: drlic {
    type: number
    sql: ${TABLE}.drlic ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: employ {
    type: number
    sql: ${TABLE}.employ ;;
  }

  dimension: fname {
    type: string
    sql: ${TABLE}.fname ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: gov_id {
    type: number
    sql: ${TABLE}.gov_id ;;
  }

  dimension: income {
    type: number
    sql: ${TABLE}.income ;;
  }

  dimension: key {
    type: string
    sql: ${TABLE}.key ;;
  }

  dimension: lname {
    type: string
    sql: ${TABLE}.lname ;;
  }

  dimension: mname {
    type: string
    sql: ${TABLE}.mname ;;
  }

  dimension: othdebt {
    type: number
    sql: ${TABLE}.othdebt ;;
  }

  dimension: passport {
    type: number
    sql: ${TABLE}.passport ;;
  }

  dimension: pending {
    type: yesno
    sql: ${TABLE}.pending ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}.phone ;;
  }

  dimension: photo {
    type: string
    sql: ${TABLE}.photo ;;
  }

  dimension: postcode {
    type: string
    sql: ${TABLE}.postcode ;;
  }

  dimension: samsung_smart_club {
    type: number
    sql: ${TABLE}.Samsung_Smart_Club ;;
  }

  dimension: segment {
    type: string
    sql: ${TABLE}.segment ;;
  }

  dimension: ssn {
    type: number
    sql: ${TABLE}.ssn ;;
  }

  dimension: ssn_last4 {
    type: number
    sql: ${TABLE}.ssn_last4 ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}.website ;;
  }

  measure: count {
    type: count
    drill_fields: [mname, lname, fname]
  }
}
