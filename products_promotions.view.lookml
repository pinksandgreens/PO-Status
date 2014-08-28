- view: products_promotions
  fields:

  - dimension: product_id
    type: int
    hidden: true
    sql: ${TABLE}.product_id

  - dimension: promotion_id
    type: int
    hidden: true
    sql: ${TABLE}.promotion_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - promotions.name
      - promotions.potential_promotion_id
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id

