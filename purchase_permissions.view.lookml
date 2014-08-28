- view: purchase_permissions
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: giver_id
    type: int
    sql: ${TABLE}.giver_id

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: original_quantity_given
    type: int
    sql: ${TABLE}.original_quantity_given

  - dimension: price
    type: number
    sql: ${TABLE}.price

  - dimension: product_id
    type: int
    hidden: true
    sql: ${TABLE}.product_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: shipping_fee
    type: number
    sql: ${TABLE}.shipping_fee

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id

