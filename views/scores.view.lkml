view: scores {
  derived_table: {
    sql: select PERIODO, 'Critical reading' subject, PUNT_LECTURA_CRITICA scores from `gtech-324715.Hackathon.pruebas_saber_11`
union all
select PERIODO, 'Math' subject, PUNT_MATEMATICAS scores from `gtech-324715.Hackathon.pruebas_saber_11`
union all
select PERIODO, 'Natural science' subject, PUNT_C_NATURALES scores from `gtech-324715.Hackathon.pruebas_saber_11`
union all
select PERIODO, 'English' subject, PUNT_INGLES scores from `gtech-324715.Hackathon.pruebas_saber_11`
union all
select PERIODO, 'Social and civic' subject, PUNT_SOCIALES_CIUDADANAS scores from `gtech-324715.Hackathon.pruebas_saber_11` ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.PERIODO ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}.subject ;;
  }

  measure: scores_subjects {
    type: average
    sql: ${TABLE}.scores ;;
  }
}
