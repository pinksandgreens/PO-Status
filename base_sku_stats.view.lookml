- view: base_sku_stats
  fields:

  - dimension: available
    type: yesno
    sql: ${TABLE}.available

  - dimension: base_product_id
    hidden: true
    sql: ${TABLE}.base_product_id

  - dimension: base_sku_id
    hidden: true
    sql: ${TABLE}.base_sku_id

  - dimension: quantity_in_stock
    type: int
    sql: ${TABLE}.quantity_in_stock

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - base_products.name
      - base_products.base_product_id
      - base_skus.base_sku_id
      - base_skus.variant_name
      - base_skus.product_name

