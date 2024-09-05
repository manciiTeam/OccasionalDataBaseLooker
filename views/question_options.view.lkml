view: question_options {
  sql_table_name: MANCII_RESULTS.question_options ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: has_order {
    type: yesno
    sql: ${TABLE}.has_order ;;
  }
  dimension: option_order {
    type: number
    sql: ${TABLE}.option_order ;;
  }
  dimension: option_text {
    type: string
    sql: ${TABLE}.option_text ;;
  }
  dimension: question_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.question_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, questions.construct_name, questions.id]
  }
}
