view: produccion_kpi1 {
  label: "produccion KPI1"
  derived_table: {
    sql:

    SELECT
    ordenes AS produccion_ordenes,
    MIN(dia_inicio_real) as fecha_de_inicio,
    COUNT(DISTINCT operaciones) AS cantidad_de_operaciones,
    COUNT(DISTINCT CASE WHEN (( IND ) = 'X') THEN operaciones ELSE NULL END) AS cant_de_operaciones_notificadas,
    COUNT(DISTINCT operaciones)-COUNT(DISTINCT CASE WHEN (( IND ) = 'X') THEN operaciones ELSE NULL END) as cantida_de_operaciones_pendientes


    FROM `proyecto-lablam-rd.SAP_REPORTING.produccion`
    GROUP BY
        1
    ORDER BY
        3 DESC;;


  }

  dimension: produccion_ordenes{
    type: string
    sql: ${TABLE}.produccion_ordenes ;;
  }

  dimension: fecha_de_inicio{
    type: date
    sql: CAST(${TABLE}.fecha_de_inicio AS TIMESTAMP) ;;
  }

  dimension: cantida_de_operaciones_pendientes_dimension{
    type: number
    sql: ${TABLE}.cantida_de_operaciones_pendientes ;;
  }

  measure: cantida_de_operaciones_pendientes{
    type: sum
    sql: ${TABLE}.cantida_de_operaciones_pendientes ;;
  }



}
