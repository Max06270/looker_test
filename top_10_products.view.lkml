view: top_10_products {
  derived_table: {
    sql: SELECT
        category,
        item_name,
        retail_price
      FROM demo_db.products

      WHERE department = "Women"



      ORDER BY retail_price desc

      LIMIT 10
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: category {
    type: string
    sql: ${TABLE}.category ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.item_name ;;
  }

  dimension: retail_price {
    type: string
    sql: ${TABLE}.retail_price ;;
  }

  set: detail {
    fields: [category, item_name, retail_price]
  }
}
