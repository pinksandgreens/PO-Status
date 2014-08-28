- view: return_label_items
  fields:

  - dimension: line_item_id
    type: int
    hidden: true
    sql: ${TABLE}.line_item_id

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: return_label_id
    type: int
    hidden: true
    sql: ${TABLE}.return_label_id

  - dimension: return_reason
    sql: ${TABLE}.return_reason

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - orders.id
      - line_items.product_name
      - line_items.id
      - return_labels.id

