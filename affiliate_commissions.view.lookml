- view: affiliate_commissions
  fields:

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: page_view_id
    type: int
    sql: ${TABLE}.page_view_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - orders.id

