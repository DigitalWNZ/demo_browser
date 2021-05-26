connection: "test"

# include all the views
include: "/views/**/*.view"

datagroup: demo_browser_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
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
