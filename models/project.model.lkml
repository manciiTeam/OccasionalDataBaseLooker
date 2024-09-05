connection: "vocational_test"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: project_default_datagroup

explore: analysis_parameters {
  join: analysis_results {
    type: left_outer 
    sql_on: ${analysis_parameters.analysis_result_id} = ${analysis_results.id} ;;
    relationship: many_to_one
  }

  join: questions {
    type: left_outer 
    sql_on: ${analysis_results.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: analysis_results {
  join: questions {
    type: left_outer 
    sql_on: ${analysis_results.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: analysis_types {}

explore: answer_metrics {
  join: answers {
    type: left_outer 
    sql_on: ${answer_metrics.answer_id} = ${answers.id} ;;
    relationship: many_to_one
  }

  join: participants {
    type: left_outer 
    sql_on: ${answers.participant_id} = ${participants.id} ;;
    relationship: many_to_one
  }

  join: questions {
    type: left_outer 
    sql_on: ${answers.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: answers {
  join: participants {
    type: left_outer 
    sql_on: ${answers.participant_id} = ${participants.id} ;;
    relationship: many_to_one
  }

  join: questions {
    type: left_outer 
    sql_on: ${answers.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: attendent {
  join: participants {
    type: left_outer 
    sql_on: ${attendent.participant_id} = ${participants.id} ;;
    relationship: many_to_one
  }
}

explore: comparative_fit_index {
  join: constructs {
    type: left_outer 
    sql_on: ${comparative_fit_index.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: concurrent_correlation_coefficient {
  join: questions {
    type: left_outer 
    sql_on: ${concurrent_correlation_coefficient.questions_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: construct_metrics {
  join: constructs {
    type: left_outer 
    sql_on: ${construct_metrics.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: constructs {
  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: content_validity_index {
  join: constructs {
    type: left_outer 
    sql_on: ${content_validity_index.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: convergence_divergence_correlation {
  join: constructs {
    type: left_outer 
    sql_on: ${convergence_divergence_correlation.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: cronbach_alpha {
  join: constructs {
    type: left_outer 
    sql_on: ${cronbach_alpha.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: discrimination_index {
  join: questions {
    type: left_outer 
    sql_on: ${discrimination_index.questions_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: equivalence_coefficient {
  join: constructs {
    type: left_outer 
    sql_on: ${equivalence_coefficient.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: g_coefficient {
  join: constructs {
    type: left_outer 
    sql_on: ${g_coefficient.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: intraclass_correlation_coefficient {
  join: constructs {
    type: left_outer 
    sql_on: ${intraclass_correlation_coefficient.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: item_functioning_differences {
  join: questions {
    type: left_outer 
    sql_on: ${item_functioning_differences.questions_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: measurement_scales {}

explore: metrics_parameters {
  join: construct_metrics {
    type: left_outer 
    sql_on: ${metrics_parameters.construct_metrics_id} = ${construct_metrics.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${construct_metrics.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: participants {}

explore: predictive_correlation_coefficient {
  join: questions {
    type: left_outer 
    sql_on: ${predictive_correlation_coefficient.questions_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: project_metrics {
  join: projects {
    type: left_outer 
    sql_on: ${project_metrics.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: projects {}

explore: question_options {
  join: questions {
    type: left_outer 
    sql_on: ${question_options.question_id} = ${questions.id} ;;
    relationship: many_to_one
  }

  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: question_types {}

explore: questions {
  join: constructs {
    type: left_outer 
    sql_on: ${questions.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: root_mean_square_error {
  join: constructs {
    type: left_outer 
    sql_on: ${root_mean_square_error.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}

explore: socio_demographics {
  join: participants {
    type: left_outer 
    sql_on: ${socio_demographics.participant_id} = ${participants.id} ;;
    relationship: many_to_one
  }
}

explore: validity_evidence {
  join: constructs {
    type: left_outer 
    sql_on: ${validity_evidence.construct_id} = ${constructs.id} ;;
    relationship: many_to_one
  }

  join: projects {
    type: left_outer 
    sql_on: ${constructs.project_id} = ${projects.id} ;;
    relationship: many_to_one
  }
}
