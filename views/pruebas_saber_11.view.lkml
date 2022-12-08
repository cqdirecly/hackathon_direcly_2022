include: "/views/extends.view.lkml"
# The name of this view in Looker is "Pruebas Saber 2020"
view: pruebas_saber_11 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
#  sql_table_name: `gtech-324715.Hackathon.pruebas_saber_11`
#    ;;

  derived_table: {
    sql:
      SELECT *, row_number() over () as pk from `gtech-324715.Hackathon.pruebas_saber_11`
    ;;
  }
  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Cole Area Ubicacion" in Explore.

  set: fields_cole {
    fields: [cole_nombre_establecimiento, cole_depto_ubicacion]
  }

  set: fields_students {
    fields: [estu_depto_reside]
  }

  dimension: cole_area_ubicacion {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_AREA_UBICACION ;;
  }

  dimension: cole_bilingue {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_BILINGUE ;;
  }

  dimension: cole_calendario {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_CALENDARIO ;;
  }

  dimension: cole_caracter {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_CARACTER ;;
  }

  dimension: cole_cod_dane_establecimiento {
    group_label: "@{educational_institution_name}"
    type: number
    sql: ${TABLE}.COLE_COD_DANE_ESTABLECIMIENTO ;;
  }

  dimension: cole_cod_dane_sede {
    group_label: "@{educational_institution_name}"
    type: number
    sql: ${TABLE}.COLE_COD_DANE_SEDE ;;
  }

  dimension: cole_cod_depto_ubicacion {
    group_label: "@{educational_institution_name}"
    type: number
    sql: ${TABLE}.COLE_COD_DEPTO_UBICACION ;;

  }

  dimension: cole_cod_mcpio_ubicacion {
    group_label: "@{educational_institution_name}"
    type: number
    sql: ${TABLE}.COLE_COD_MCPIO_UBICACION ;;
  }

  dimension: cole_codigo_icfes {
    group_label: "@{educational_institution_name}"
    type: number
    sql: ${TABLE}.COLE_CODIGO_ICFES ;;
  }

  dimension: cole_depto_ubicacion {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_DEPTO_UBICACION ;;
  }

  dimension: cole_depto_ubicacionlink {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${cole_depto_ubicacion} ;;

  }

  dimension: cole_genero {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_GENERO ;;
  }

  dimension: cole_jornada {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_JORNADA ;;
  }

  dimension: cole_mcpio_ubicacion {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_MCPIO_UBICACION ;;
  }

  dimension: cole_naturaleza {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_NATURALEZA ;;
    drill_fields: [fields_cole*, cole_naturaleza]
  }

  dimension: cole_nombre_establecimiento {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_NOMBRE_ESTABLECIMIENTO ;;
  }

  dimension: cole_nombre_sede {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_NOMBRE_SEDE ;;
  }

  dimension: cole_sede_principal {
    group_label: "@{educational_institution_name}"
    type: string
    sql: ${TABLE}.COLE_SEDE_PRINCIPAL ;;
  }

  dimension: desemp_c_naturales {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.DESEMP_C_NATURALES ;;
  }

  dimension: desemp_ingles {
    group_label: "@{scores_saber_name}"
    type: string
    sql: ${TABLE}.DESEMP_INGLES ;;
  }

  dimension: desemp_lectura_critica {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.DESEMP_LECTURA_CRITICA ;;
  }

  dimension: desemp_matematicas {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.DESEMP_MATEMATICAS ;;
  }

  dimension: desemp_sociales_ciudadanas {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.DESEMP_SOCIALES_CIUDADANAS ;;
  }

  dimension: estu_cod_depto_presentacion {
    group_label: "@{students_name}"
    type: number
    sql: ${TABLE}.ESTU_COD_DEPTO_PRESENTACION ;;
  }

  dimension: estu_cod_mcpio_presentacion {
    group_label: "@{students_name}"
    type: number
    sql: ${TABLE}.ESTU_COD_MCPIO_PRESENTACION ;;
  }

  dimension: estu_cod_reside_depto {
    group_label: "@{students_name}"
    type: number
    sql: ${TABLE}.ESTU_COD_RESIDE_DEPTO ;;
  }

  dimension: estu_cod_reside_mcpio {
    group_label: "@{students_name}"
    type: number
    sql: ${TABLE}.ESTU_COD_RESIDE_MCPIO ;;
  }

  dimension: estu_consecutivo {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_CONSECUTIVO ;;
  }

  dimension: estu_dedicacioninternet {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_DEDICACIONINTERNET ;;
  }

  dimension: estu_dedicacionlecturadiaria {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_DEDICACIONLECTURADIARIA ;;
  }

  dimension: estu_depto_presentacion {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_DEPTO_PRESENTACION ;;
    link: {
      label: "Details educational Institutions"
      url: "https://hack.looker.com/dashboards/67?State={{ value | url_encode }}"
    }
  }

  dimension: estu_depto_reside {
    group_label: "@{students_name}"
    type: string
    map_layer_name: colombia_map
    sql: ${TABLE}.ESTU_DEPTO_RESIDE ;;

  }

  dimension: estu_estadoinvestigacion {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_ESTADOINVESTIGACION ;;
  }

  dimension: estu_estudiante {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_ESTUDIANTE ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: estu_fechanacimiento {
    group_label: "@{students_name}"
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
    sql: ${TABLE}.ESTU_FECHANACIMIENTO ;;
  }

  dimension: estu_generacion_e {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_GENERACION_E ;;
  }

  dimension: estu_genero {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_GENERO ;;
  }

  dimension: estu_horassemanatrabaja {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_HORASSEMANATRABAJA ;;
  }

  dimension: estu_inse_individual {
    group_label: "@{students_name}"
    type: number
    sql: ${TABLE}.ESTU_INSE_INDIVIDUAL ;;
  }

  dimension: estu_mcpio_presentacion {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_MCPIO_PRESENTACION ;;
  }

  dimension: estu_mcpio_reside {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_MCPIO_RESIDE ;;
  }

  dimension: estu_nacionalidad {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_NACIONALIDAD ;;
  }

  dimension: estu_nse_establecimiento {
    group_label: "@{students_name}"
    type: number
    sql: ${TABLE}.ESTU_NSE_ESTABLECIMIENTO ;;
  }

  dimension: estu_nse_individual {
    group_label: "@{students_name}"
    type: number
    sql: ${TABLE}.ESTU_NSE_INDIVIDUAL ;;
  }

  dimension: estu_pais_reside {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_PAIS_RESIDE ;;
  }

  dimension: estu_privado_libertad {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_PRIVADO_LIBERTAD ;;
  }

  dimension: estu_tieneetnia {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_TIENEETNIA ;;
  }

  dimension: estu_tipodocumento {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_TIPODOCUMENTO ;;
  }

  dimension: estu_tiporemuneracion {
    group_label: "@{students_name}"
    type: string
    sql: ${TABLE}.ESTU_TIPOREMUNERACION ;;
  }

  dimension: fami_comecarnepescadohuevo {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_COMECARNEPESCADOHUEVO ;;
  }

  dimension: fami_comecerealfrutoslegumbre {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_COMECEREALFRUTOSLEGUMBRE ;;
  }

  dimension: fami_comelechederivados {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_COMELECHEDERIVADOS ;;
  }

  dimension: fami_cuartoshogar {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_CUARTOSHOGAR ;;
  }

  dimension: fami_educacionmadre {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_EDUCACIONMADRE ;;
  }

  dimension: fami_educacionpadre {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_EDUCACIONPADRE ;;
  }

  dimension: fami_estratovivienda {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_ESTRATOVIVIENDA ;;
  }

  dimension: fami_numlibros {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_NUMLIBROS ;;
  }

  dimension: fami_personashogar {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_PERSONASHOGAR ;;
  }

  dimension: fami_situacioneconomica {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_SITUACIONECONOMICA ;;
  }

  dimension: fami_tieneautomovil {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENEAUTOMOVIL ;;
  }

  dimension: fami_tienecomputador {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENECOMPUTADOR ;;
  }

  dimension: fami_tieneconsolavideojuegos {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENECONSOLAVIDEOJUEGOS ;;
  }

  dimension: fami_tienehornomicroogas {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENEHORNOMICROOGAS ;;
  }

  dimension: fami_tieneinternet {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENEINTERNET ;;
  }

  dimension: fami_tienelavadora {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENELAVADORA ;;
  }

  dimension: fami_tienemotocicleta {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENEMOTOCICLETA ;;
  }

  dimension: fami_tieneserviciotv {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TIENESERVICIOTV ;;
  }

  dimension: fami_trabajolabormadre {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TRABAJOLABORMADRE ;;
  }

  dimension: fami_trabajolaborpadre {
    group_label: "@{family_name}"
    type: string
    sql: ${TABLE}.FAMI_TRABAJOLABORPADRE ;;
  }

  dimension: percentil_c_naturales {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PERCENTIL_C_NATURALES ;;
  }

  dimension: percentil_global {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PERCENTIL_GLOBAL ;;
  }

  dimension: percentil_ingles {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PERCENTIL_INGLES ;;
  }

  dimension: percentil_lectura_critica {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PERCENTIL_LECTURA_CRITICA ;;
  }

  dimension: percentil_matematicas {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PERCENTIL_MATEMATICAS ;;
  }

  dimension: percentil_sociales_ciudadanas {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PERCENTIL_SOCIALES_CIUDADANAS ;;
  }

  dimension: periodo {
    group_label: "@{scores_saber_name}"
    type: string
    sql: ${TABLE}.PERIODO ;;
  }

  dimension: punt_c_naturales {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PUNT_C_NATURALES ;;
  }

  dimension: punt_global {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PUNT_GLOBAL ;;
  }

  dimension: punt_ingles {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PUNT_INGLES ;;
  }

  dimension: punt_lectura_critica {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PUNT_LECTURA_CRITICA ;;
  }

  dimension: punt_matematicas {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PUNT_MATEMATICAS ;;
  }

  dimension: punt_sociales_ciudadanas {
    group_label: "@{scores_saber_name}"
    type: number
    sql: ${TABLE}.PUNT_SOCIALES_CIUDADANAS ;;
  }

  # ---- Measures -----

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_cole_cod_dane_establecimiento {
    group_label: "@{educational_institution_name}"
    type: sum
    sql: ${cole_cod_dane_establecimiento} ;;
  }

  measure: average_cole_cod_dane_establecimiento {
    group_label: "@{educational_institution_name}"
    type: average
    sql: ${cole_cod_dane_establecimiento} ;;
  }


  measure: avg_punt_c_naturales {
    label: "Avg Score Natural Science"
    description: "Avg Score Natural Science"
    group_label: "@{scores_saber_name}"
    type: average
    sql: ${punt_c_naturales} ;;
    value_format_name: decimal_2
  }

  measure: avg_punt_global {
    label: "Avg Score Global"
    description: "Avg Score Global"
    group_label: "@{scores_saber_name}"
    type: average
    sql: ${punt_global} ;;
    value_format_name: decimal_2
  }

  measure: avg_punt_ingles {
    label: "Avg Score English"
    description: "Avg Score English"
    group_label: "@{scores_saber_name}"
    type: average
    sql: ${punt_ingles} ;;
    value_format_name: decimal_2
  }

  measure: avg_punt_matematicas {
    label: "Avg Score Math"
    description: "Avg Score Math"
    group_label: "@{scores_saber_name}"
    type: average
    sql: ${punt_matematicas} ;;
    value_format_name: decimal_2
  }

  measure: avg_punt_lectura_critica {
    label: "Avg Score Critical Reading"
    description: "Avg Score Critical Reading"
    group_label: "@{scores_saber_name}"
    type: average
    sql: ${punt_lectura_critica} ;;
    value_format_name: decimal_2
  }

  measure: avg_punt_sociales_ciudadanas {
    label: "Avg Score Social and Civic"
    description: "Avg Score Social and Civic"
    group_label: "@{scores_saber_name}"
    type: average
    sql: ${punt_sociales_ciudadanas} ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: []
  }

  # Grouping categorical dimensions

  dimension: cole_naturaleza_level {
    type: number
    group_label: "@{educational_institution_name}"
    case: {
      when: {
        sql: ${cole_naturaleza} in ("OFICIAL") ;;
        label: "1"
      }
      when: {
        sql: ${cole_naturaleza} in ("NO OFICIAL") ;;
        label: "2"
      }

      else: "0"
    }
  }

  dimension: mothers_education_level {
    type: number
    group_label: "@{family_name}"
    case: {
      when: {
        sql: ${fami_educacionmadre} in ("Secundaria (Bachillerato) completa",
                                        "Técnica o tecnológica incompleta",
                                        "Educación profesional incompleta") ;;
        label: "1"
      }
      when: {
        sql: ${fami_educacionmadre} in ("Técnica o tecnológica completa") ;;
        label: "2"
      }
      when: {
        sql: ${fami_educacionmadre} in ("Educación profesional completa",
                                        "Postgrado") ;;
        label: "3"
      }
      else: "0"
    }
  }

  dimension: fathers_education_level {
    type: number
    group_label: "@{family_name}"
    case: {
      when: {
        sql: ${fami_educacionpadre} in ("Secundaria (Bachillerato) completa",
                                        "Técnica o tecnológica incompleta",
                                        "Educación profesional incompleta") ;;
        label: "1"
      }
      when: {
        sql: ${fami_educacionpadre} in ("Técnica o tecnológica completa") ;;
        label: "2"
      }
      when: {
        sql: ${fami_educacionpadre} in ("Educación profesional completa",
          "Postgrado") ;;
        label: "3"
      }
      else: "0"
    }
  }

  dimension: estrato_level {
    type: number
    group_label: "@{family_name}"
    case: {
      when: {
        sql: ${fami_estratovivienda} = "Estrato 1" ;;
        label: "1"
      }
      when: {
        sql: ${fami_estratovivienda} = "Estrato 2" ;;
        label: "2"
      }
      when: {
        sql: ${fami_estratovivienda} = "Estrato 3" ;;
        label: "3"
      }
      when: {
        sql: ${fami_estratovivienda} = "Estrato 4" ;;
        label: "4"
      }
      when: {
        sql: ${fami_estratovivienda} = "Estrato 5" ;;
        label: "5"
      }
      when: {
        sql: ${fami_estratovivienda} = "Estrato 6" ;;
        label: "6"
      }
      else: "0"
    }
  }


  dimension: internet_connection {
    type: number
    group_label: "@{family_name}"
    case: {
      when: {
        sql: ${fami_tieneinternet} = "Si" ;;
        label: "1"
      }
      when: {
        sql: ${fami_tieneinternet} = "No" ;;
        label: "0"
      }
      else: "Unknown"
    }
  }


}
