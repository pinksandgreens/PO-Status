- view: line_items_promotion_usages
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: line_item_id
    type: int
    hidden: true
    sql: ${TABLE}.line_item_id

  - dimension: promotion_usage_id
    type: int
    hidden: true
    sql: ${TABLE}.promotion_usage_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - line_items.product_name
      - line_items.id
      - promotion_usages.id

