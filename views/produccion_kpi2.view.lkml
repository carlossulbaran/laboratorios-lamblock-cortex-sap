view: produccion_kpi2 {
  label: "produccion KPI2"
  derived_table: {
    sql:

    SELECT

    ordenes,
    operaciones,
    recurso,
    dia_inicio_real,
    avg(Cantidad_buena_notificada/Cantidad_buena_a_notificar) as cantidad_planificada


    FROM `proyecto-lablam-rd.SAP_REPORTING.produccion`

    where Cantidad_buena_a_notificar != 0

    group by 1,2,3,4;;


  }



    dimension: produccion_ordenes{
    type: string
    sql: ${TABLE}.ordenes ;;
  }


  dimension: recurso{
    type: string
    sql: ${TABLE}.recurso ;;
  }

  dimension: operaciones{
    type: string
    sql: ${TABLE}.operaciones ;;
  }


  dimension: fecha_de_inicio{
    type: date
    sql: CAST(${TABLE}.dia_inicio_real AS TIMESTAMP) ;;
  }

  dimension: cantida_de_operaciones_pendientes_dimension{
    type: number
    sql: ${TABLE}.cantida_de_operaciones_pendientes ;;
  }

  measure: cantidad_planificada{
    type: average
    sql: ${TABLE}.cantidad_planificada ;;
  }



}
