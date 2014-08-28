- view: line_item_refunds
  fields:

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: amount_refunded_to_us
    type: number
    sql: ${TABLE}.amount_refunded_to_us

  - dimension: cancel
    type: yesno
    sql: ${TABLE}.cancel

  - dimension: get_refund_from_seller_delete_later
    type: yesno
    sql: ${TABLE}.get_refund_from_seller_delete_later

  - dimension: line_item_id
    type: int
    hidden: true
    sql: ${TABLE}.line_item_id

  - dimension: refund_id
    type: int
    hidden: true
    sql: ${TABLE}.refund_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - line_items.product_name
      - line_items.id
      - refunds.id

