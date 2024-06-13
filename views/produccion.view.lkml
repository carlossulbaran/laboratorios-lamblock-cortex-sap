view: produccion {


  sql_table_name: `@{GCP_PROJECT}.@{REPORTING_DATASET}.produccion`;;


  dimension: ordenes {
    type: string
    sql: ${TABLE}.ordenes;;
  }

  dimension: operaciones {
    type: string
    sql: ${TABLE}.operaciones;;
  }

  dimension: recurso {
    type: string
    sql: ${TABLE}.recurso;;
  }

  dimension: Txt_brv_operacion {
    type: string
    sql: ${TABLE}.Txt_brv_operacion;;
  }

  dimension: unidad_de_medida {
    type: string
    sql: ${TABLE}.unidad_de_medida;;
  }

  dimension: dia_inicio_real {
    type: date
    sql: ${TABLE}.dia_inicio_real;;
  }

  dimension: dia_finalizacion_real {
    type: date
    sql: ${TABLE}.dia_finalizacion_real;;
  }



  dimension: Status_de_sistema {
    type: string
    sql: ${TABLE}.Status_de_sistema;;
  }

  dimension: IND {
    type: string
    sql: ${TABLE}.IND;;
  }

  measure: Cantidad_buena_a_notificar {
    type: number
    sql: ${TABLE}.Cantidad_buena_a_notificar;;
  }

  measure: Cantidad_buena_notificada {
    type: number
    sql: ${TABLE}.Cantidad_buena_notificada;;
  }

  measure: Activ_1_notificada_ILE01 {
    type: number
    sql: ${TABLE}.Activ_1_notificada_ILE01;;
  }

  measure: Activ_2_notificada_ILE02 {
    type: number
    sql: ${TABLE}.Activ_2_notificada_ILE02;;
  }


}
