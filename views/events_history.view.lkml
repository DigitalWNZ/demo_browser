view: events_history {
  sql_table_name: `allen-altostrat-test.test_bill.events_history`
    ;;

  dimension: ac {
    type: number
    sql: ${TABLE}.AC ;;
  }

  dimension: ad_return {
    type: number
    sql: ${TABLE}.Ad_return ;;
  }

  dimension: app_version {
    type: string
    sql: ${TABLE}.app_version ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: continent {
    type: string
    sql: ${TABLE}.continent ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}.country_code ;;
  }

  dimension: device_category {
    type: string
    sql: ${TABLE}.device_category ;;
  }

  dimension: device_os {
    type: string
    sql: ${TABLE}.device_os ;;
  }

  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }

  dimension_group: event_timestamp {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: event_value_in_usd {
    type: number
    sql: ${TABLE}.event_value_in_usd ;;
  }

  dimension_group: first_open {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_open_time ;;
  }

  dimension_group: first_open_time_set {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_open_time_set ;;
  }

  dimension_group: first_touch {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_touch_time ;;
  }

  dimension: game_name {
    type: string
    sql: ${TABLE}.game_name ;;
  }

  dimension: iap {
    type: number
    sql: ${TABLE}.IAP ;;
  }

  dimension: install_source {
    type: string
    sql: ${TABLE}.install_source ;;
  }

  dimension: region {
    type: string
    sql: ${TABLE}.region ;;
  }

  dimension: traffic_source_medium {
    type: string
    sql: ${TABLE}.traffic_source_medium ;;
  }

  dimension: traffic_source_source {
    type: string
    sql: ${TABLE}.traffic_source_source ;;
  }

  dimension: traffice_source_name {
    type: string
    sql: ${TABLE}.traffice_source_name ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [traffice_source_name, game_name, event_name]
  }
}
