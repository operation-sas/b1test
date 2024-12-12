view: countries {
  sql_table_name: demo_db.Countries ;;

  dimension: binary_value {
    type: string
    sql: ${TABLE}.binary_value ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }
  dimension: state_flag_image {
    type: string
    sql: ${state} ;;
    html:
              {% if state._value == "Bihar" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/0/01/Flag_of_California.svg" height="170" width="255">
              {% elsif state._value == "Andhra Pradesh" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Flag_of_United_Andhra_Pradesh.svg/810px-Flag_of_United_Andhra_Pradesh.svg.png" height="170" width="255">
              {% elsif state._value == "Colorado" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Flag_of_Colorado.svg/255px-Flag_of_Colorado.svg.png" height="170" width="255">
              {% elsif state._value == "Illinois"%}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/0/01/Flag_of_Illinois.svg/1200px-Flag_of_Illinois.svg.png" height="170" width="255">
              {% else %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="170" width="170">
              {% endif %} ;;
  }
  measure: count {
    type: count
  }
}
