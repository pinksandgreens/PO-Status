- view: sku_stats
  fields:

  - dimension: available
    type: yesno
    sql: ${TABLE}.available

  - dimension: product_id
    type: int
    hidden: true
    sql: ${TABLE}.product_id

  - dimension: quantity_in_stock
    type: int
    sql: ${TABLE}.quantity_in_stock

  - dimension: sku_id
    type: int
    hidden: true
    sql: ${TABLE}.sku_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id
      - skus.product_name
      - skus.id
      - skus.name

