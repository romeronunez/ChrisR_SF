# The name of this view in Looker is "Order Items"
view: order_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "LOOKER_TEST"."ORDER_ITEMS"
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;
  }

  measure: average_amount {
    type: average
    sql: ${amount} ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: sku_num {
    type: number
    sql: ${TABLE}."SKU_NUM" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, orders.id]
  }
  measure: count_unique_visitors {
    label: "Unique Visits"
    type: number
    sql:  17778474;;
    link: {
      label: "Visit Details"
      url:"
      {% assign vis_config = '{
      \"type\": \"table\",
      \"show_view_names\": false,
      \"table_theme\": \"unstyled\"
      }' %}
      {{ drill_count_unique_visitors._link }}&vis_config={{ vis_config | encode_uri }}"
    }
    link: {
      label: "Show Details"
      url: "
      {% assign vis_config = '{
      \"stacking\"              : \"normal\",
      \"legend_position\"       : \"right\",
      \"x_axis_gridlines\"      : false,
      \"y_axis_gridlines\"      : true,
      \"show_view_names\"       : false,
      \"y_axis_combined\"       : true,
      \"show_y_axis_labels\"    : true,
      \"show_y_axis_ticks\"     : true,
      \"y_axis_tick_density\"   : \"default\",
      \"show_x_axis_label\"     : false,
      \"show_x_axis_ticks\"     : true,
      \"x_axis_scale\"          : \"auto\",
      \"y_axis_scale_mode\"     : \"linear\",
      \"show_null_points\"      : false,
      \"interpolation\"         : \"monotone\",
      \"type\"                  : \"looker_column\",
      \"totals_color\"          : \"#808080\",
      \"colors\": [
      \"#207F7F\"
      ],
      \"series_labels\" :
      {\"sessions.count_unique_visitors\": \"Unique Visits\"}
      }' %}
      {{ hidden_count_unique_visitors._link }}&vis_config={{ vis_config | encode_uri }}&sorts=session_date_month&toggle=dat,pik,vis&limit=500&column_limit=15"
    }
  }
  measure: total_visits {
    label: "Visits"
    type: number # changed from type: count to resolve conflict, should be distinct
    sql: 20194341;;
    link: {
      label: "Visit Details"
      url:"
      {% assign vis_config = '{
      \"type\": \"table\",
      \"show_view_names\": false,
      \"table_theme\": \"unstyled\"
      }' %}
      {{ drill_total_visits._link }}&vis_config={{ vis_config | encode_uri }}"
    }
    link: {
      label: "Show Details"
      url: "
      {% assign vis_config = '{
      \"stacking\"              : \"normal\",
      \"legend_position\"       : \"right\",
      \"x_axis_gridlines\"      : false,
      \"y_axis_gridlines\"      : true,
      \"show_view_names\"       : false,
      \"y_axis_combined\"       : true,
      \"show_y_axis_labels\"    : true,
      \"show_y_axis_ticks\"     : true,
      \"y_axis_tick_density\"   : \"default\",
      \"show_x_axis_label\"     : false,
      \"show_x_axis_ticks\"     : true,
      \"x_axis_scale\"          : \"auto\",
      \"y_axis_scale_mode\"     : \"linear\",
      \"show_null_points\"      : false,
      \"interpolation\"         : \"monotone\",
      \"type\"                  : \"looker_column\",
      \"totals_color\"          : \"#808080\",
      \"colors\": [
      \"#33CCCC\"
      ],
      \"series_labels\" :
      {\"total_visits\": \"Visits\"}
      }' %}
      {{ hidden_total_visits._link }}&vis_config={{ vis_config | encode_uri }}&sorts=facts.grouping_Date_month&toggle=dat,pik,vis&limit=500&column_limit=15"
    }
  }
  measure: cost_per_unique_visit {
    label: "Cost per Unique Visit"
    type: number
    value_format: "#,##0.#0"
    sql:  0.0;;
    #html: {% if 1  > 1 %}
     #           <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <img src=https://cdn.bizible.com/images/currency-warning.png style="height: 20px"/>
      #{% else %}
      #<a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <span style="font-size: 70%">{{"USD"}}</span>
      #{% endif %}  ;;
  }
  measure: cost_per_lead {
    label: "Cost per Lead"
    type: number
    value_format: "#,##0.#0"
    sql:  456;;
    html: {% if 1 > 1 %}
                <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <img src=https://cdn.bizible.com/images/currency-warning.png style="height: 20px"/>
      {% else %}
      <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <span style="font-size: 70%">{{654}}</span>
      {% endif %} ;;
  }
  measure: cost_per_visit {
    label: "Cost per Visit"
    type: number
    value_format: "#,##0.#0"
    sql:  0.0 ;;
    #html: {% if 1  > 1 %}
     #           <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <img src=https://cdn.bizible.com/images/currency-warning.png style="height: 20px"/>
      #{% else %}
      #<a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <span style="font-size: 70%">{{"USD"}}</span>
      #{% endif %}  ;;
  }
  measure: cost {
    label: "Cost"
    type: number
    value_format: "#,##0"
    sql:678;;
    html: {% if 1  > 1 %}
                <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a><img src=https://cdn.bizible.com/images/currency-warning.png style="height: 20px"/>
      {% else %}
      <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <span style="font-size: 70%">{{876}}</span>
      {% endif %} ;;
    link: {
      label: "Spend Details"
      url:"
      {% assign vis_config = '{
      \"type\": \"table\",
      \"show_view_names\": false,
      \"table_theme\": \"unstyled\"
      }' %}
      {{ drill_cost._link }}&vis_config={{ vis_config | encode_uri }}"
    }
    link: {
      label: "Show Details"
      url: "
      {% assign vis_config = '{
      \"stacking\"              : \"normal\",
      \"legend_position\"       : \"right\",
      \"x_axis_gridlines\"      : false,
      \"y_axis_gridlines\"      : true,
      \"show_view_names\"       : false,
      \"y_axis_combined\"       : true,
      \"show_y_axis_labels\"    : true,
      \"show_y_axis_ticks\"     : true,
      \"y_axis_tick_density\"   : \"default\",
      \"show_x_axis_label\"     : false,
      \"show_x_axis_ticks\"     : true,
      \"x_axis_scale\"          : \"auto\",
      \"y_axis_scale_mode\"     : \"linear\",
      \"show_null_points\"      : false,
      \"interpolation\"         : \"monotone\",
      \"type\"                  : \"looker_column\",
      \"totals_color\"          : \"#808080\",
      \"colors\": [
      \"#213142\"
      ],
      \"series_labels\" :
      {\"costs.cost\": \"Spend\",
      \"costs_by_account.cost\": \"Spend\",
      \"costs_by_ad.cost\": \"Spend\",
      \"costs_by_ad_group.cost\": \"Spend\",
      \"costs_by_advertiser.cost\": \"Spend\",
      \"costs_by_campaign.cost\": \"Spend\",
      \"costs_by_channel.cost\": \"Spend\",
      \"costs_by_keyword.cost\": \"Spend\",
      \"costs_by_placement.cost\": \"Spend\",
      \"costs_by_site.cost\": \"Spend\"}
      }' %}
      {{ hidden_cost._link }}&vis_config={{ vis_config | encode_uri }}&sorts=cost_date_month&toggle=dat,pik,vis&limit=500&column_limit=15"
    }
  }
  measure: cost_per_unique_visit1 {
    label: "Cost per Unique Visit"
    type: number
    value_format: "#,##0.#0"
    sql:  0.91;;
    html:  {% if 1  > 1 %}
                <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <img src=https://cdn.bizible.com/images/currency-warning.png style="height: 20px"/>
      {% else %}
      <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <span style="font-size: 70%">{{"USD"}}</span>
      {% endif %}  ;;
    }
  measure: cost_per_unique_visit2 {
    label: "Cost per Unique Visit"
    type: number
    value_format: "#,##0.#0"
    sql:  0.80;;
    html:  {% if 1  > 1 %}
                <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <img src=https://cdn.bizible.com/images/currency-warning.png style="height: 20px"/>
      {% else %}
      <a style="color:inherit" href="#drillmenu" target="_self"> {{ rendered_value }} </a> <span style="font-size: 70%">{{" USD "}}</span>
      {% endif %}  ;;
}
}
