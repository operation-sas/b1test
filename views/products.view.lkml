view: products {
  sql_table_name: demo_db.products ;;
  drill_fields: [id]
  fields_hidden_by_default: yes


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    hidden: yes
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
    hidden: no
  }
  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
    hidden: no
  }
  dimension: department {
    type: string
    sql: ${TABLE}.department ;;
    hidden: no
  }
  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
    hidden: yes
  }
  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }
  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }
  dimension: sku {
    type: string
    sql: ${TABLE}.sku ;;
  }
  measure: count {
    type: count
    drill_fields: [id, item_name, inventory_items.count]
  }
}
