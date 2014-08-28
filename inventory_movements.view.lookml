- view: inventory_movements
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: int
    sql: ${TABLE}.amount

  - dimension: base_sku_id
    hidden: true
    sql: ${TABLE}.base_sku_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: infinite_quantity
    type: yesno
    sql: ${TABLE}.infinite_quantity

  - dimension: line_item_id
    type: int
    hidden: true
    sql: ${TABLE}.line_item_id

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: sku_id
    type: int
    hidden: true
    sql: ${TABLE}.sku_id

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
      - base_skus.base_sku_id
      - base_skus.variant_name
      - base_skus.product_name
      - skus.product_name
      - skus.id
      - skus.name
      - line_items.product_name
      - line_items.id

