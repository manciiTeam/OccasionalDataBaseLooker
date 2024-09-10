view: answers {
  sql_table_name: MANCII_RESULTS.answers ;;
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
  dimension: heat_map_data {
    type: string
    sql: ${TABLE}.heat_map_data ;;
  }
  dimension: participant_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.participant_id ;;
  }
  dimension: question_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.question_id ;;
  }
  dimension: response {
    type: string
    sql: ${TABLE}.response ;;
  }
  dimension_group: response {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.response_time ;;
  }
  dimension: response_type {
    type: string
    sql: ${TABLE}.response_type ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension_group: view {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.view_time ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }
  measure: dash_nav {
    hidden: no
    label: "Navigation Bar"
    type: string
    sql: "";;
    html:
    <div style="background-color: #FFFFFF; height:525px;width:100%"></div>
      <div style="background-color: #FFFFFF; border: solid 1px #4285F4; border-radius: 5px; padding: 5px 10px; height: 60px; width:100%">
        <nav style="font-size: 18px; color: #4285F4">
      <a style="padding: 5px; float: center; line-height: 40px; margin-left: 8px; color: #4285F4" href="/dashboards/5?">Colegios</a>
      </nav>
      </div>
      <div style="background-color: #FFFFFF; height:500px;width:100%"></div>;;
  }



  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  id,
  participants.id,
  participants.name,
  questions.construct_name,
  questions.id,
  answer_metrics.count
  ]
  }

}
