view: ranking_state {
  derived_table: {
    sql: with tb1 as (select cole_depto_ubicacion, avg(punt_global) score from `gtech-324715.Hackathon.pruebas_saber_11`
          group by cole_depto_ubicacion order by score desc)

          select cole_depto_ubicacion, score, row_number() over() rank from tb1 ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.cole_depto_ubicacion ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
}
