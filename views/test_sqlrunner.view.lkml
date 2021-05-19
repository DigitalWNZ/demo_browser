view: test_sqlrunner {
  derived_table: {
    sql: select agent_asn, agent_ip from wtrace_view.result
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: agent_asn {
    type: string
    sql: ${TABLE}.agent_asn ;;
  }

  dimension: agent_ip {
    type: string
    sql: ${TABLE}.agent_ip ;;
  }

  set: detail {
    fields: [agent_asn, agent_ip]
  }
}
