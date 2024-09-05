view: construct_metrics {
  sql_table_name: MANCII_RESULTS.construct_metrics ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
  dimension: analysis_type {
    type: string
    sql: ${TABLE}.analysis_type ;;
  }
  dimension: construct_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.construct_id ;;
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
  dimension: metric_name {
    type: string
    sql: ${TABLE}.metric_name ;;
  }
  dimension: metric_value {
    type: number
    sql: ${TABLE}.metric_value ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, metric_name, constructs.id, constructs.name, metrics_parameters.count]
  }
}
