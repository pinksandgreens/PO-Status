- view: affiliate_commissions_line_items
  fields:

  - dimension: amount_customer_paid
    type: int
    sql: ${TABLE}.amount_customer_paid

  - dimension: commission_paid
    type: int
    sql: ${TABLE}.commission_paid

  - dimension: commission_rate
    type: number
    sql: ${TABLE}.commission_rate

  - dimension: line_item_id
    type: int
    hidden: true
    sql: ${TABLE}.line_item_id

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - sites.id
      - line_items.product_name
      - line_items.id
      - orders.id

