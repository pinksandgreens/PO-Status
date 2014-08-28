- view: channels_products
  fields:

  - dimension: channel_id
    type: int
    hidden: true
    sql: ${TABLE}.channel_id

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: product_id
    type: int
    hidden: true
    sql: ${TABLE}.product_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - channels.id
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id

