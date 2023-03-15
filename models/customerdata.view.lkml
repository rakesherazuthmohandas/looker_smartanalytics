# STOP! This file was generated by an automated process.
# Any edits you make will be lost the next time it is
# re-generated.
view: customerdata {
  sql_table_name: Banking.customerdata ;;

  dimension: addr1 {
    sql: ${TABLE}.addr1 ;;
  }

  dimension: city {
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    sql: ${TABLE}.country ;;
  }

  dimension: Samsung_Smart_Club {
    type: number
    primary_key: yes
    sql: ${TABLE}.Samsung_Smart_Club ;;
  }

  dimension_group: dob {
    type: time
    timeframes: [time, date, week, month]
    datatype: datetime
    sql: ${TABLE}.dob ;;
  }

  measure: creddebt {
    type: min
    sql: ${TABLE}.creddebt ;;
  }

  measure: debtinc {
    type: sum
    sql: ${TABLE}.debtinc ;;
  }

  measure: income {
    type: sum
    sql: ${TABLE}.income ;;
  }

  measure: othdebt {
    type: sum
    sql: ${TABLE}.othdebt ;;
  }
}
