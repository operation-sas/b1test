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
              <img src="https://upload.wikimedia.org/wikipedia/commons/5/5b/Seal_of_Bihar.jpg?20110320165932" height="7" width="5">
              {% elsif state._value == "Andhra Pradesh" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Flag_of_United_Andhra_Pradesh.svg/810px-Flag_of_United_Andhra_Pradesh.svg.png" height="7" width="5">
              {% elsif state._value == "Assam" %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/c/c0/Assam_Flag%28INDIA%29.png" height="7" width="5">
              {% elsif state._value == "Arunachal Pradesh"%}
              <img src="https://upload.wikimedia.org/wikipedia/commons/6/60/Flag_of_Arunachal_Pradesh.svg" height="7" width="5">
              {% else %}
              <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png" height="7" width="5">
              {% endif %} ;;
  }
  measure: count {
    type: count
  }
}
