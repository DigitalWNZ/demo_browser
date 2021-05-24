view: cap {
  sql_table_name: `allen-first.rackdata.cap`
    ;;

  dimension: intended_lacp_state_0_per_link_mbps_1 {
    type: string
    sql: ${TABLE}.IntendedLacpState_0_per_link_mbps_1 ;;
  }

  dimension: intended_lacp_state_0_total_links_2 {
    type: string
    sql: ${TABLE}.IntendedLacpState_0_total_links_2 ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }

  dimension: performance_class_tag_0 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_0 ;;
  }

  dimension: performance_class_tag_1 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_1 ;;
  }

  dimension: performance_class_tag_2 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_2 ;;
  }

  dimension: performance_class_tag_3 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_3 ;;
  }

  dimension: performance_class_tag_4 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_4 ;;
  }

  dimension: performance_class_tag_5 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_5 ;;
  }

  dimension: performance_class_tag_6 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_6 ;;
  }

  dimension: performance_class_tag_7 {
    type: string
    sql: ${TABLE}.PerformanceClassTag_7 ;;
  }

  dimension: ram_kilobytes {
    type: string
    sql: ${TABLE}.RamKilobytes ;;
  }

  dimension: streaming_capacity_mbps {
    type: string
    sql: ${TABLE}.StreamingCapacityMbps ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
