connection: "test"

# include all the views
include: "/views/**/*.view"

datagroup: demo_browser_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  sql_trigger: SELECT FLOOR(((TIMESTAMP_DIFF(CURRENT_TIMESTAMP(),'1970-01-01 00:00:00',SECOND)) - 60*60*23)/(60*60*24))  ;;
  max_cache_age: "1 hour"
}

persist_with: demo_browser_default_datagroup

explore: borgmonfull {}

explore: connection_reg_r3 {}

explore: geo_ip_country_mask {}

explore: geo_ip_isp_mask {}

explore: result {}

explore: wtrace_view {}

explore: wtrace_view_1 {}

explore: test_sqlrunner {}

explore: pdt_wild {}
