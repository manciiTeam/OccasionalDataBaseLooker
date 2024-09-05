view: projects {
  sql_table_name: MANCII_RESULTS.projects ;;
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
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension: project_name {
    type: string
    sql: ${TABLE}.project_name ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: url_origin {
    type: string
    sql: ${TABLE}.url_origin ;;
  }
  measure: count {
    type: count
    drill_fields: [id, project_name, constructs.count, project_metrics.count]
  }
}
