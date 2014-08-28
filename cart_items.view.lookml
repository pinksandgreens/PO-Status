- view: cart_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: cart_id
    type: int
    hidden: true
    sql: ${TABLE}.cart_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: personalized_text
    sql: ${TABLE}.personalized_text

  - dimension: product_id_delete_me
    type: int
    sql: ${TABLE}.product_id_delete_me

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

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
      - id
      - skus.product_name
      - skus.id
      - skus.name
      - carts.id

