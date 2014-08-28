- view: purchase_order_payments
  fields:

  - dimension: purchase_order_payment_id
    primary_key: true
    type: int
    sql: ${TABLE}.purchase_order_payment_id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: purchase_order_id
    type: int
    hidden: true
    sql: ${TABLE}.purchase_order_id

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - purchase_order_payment_id
      - purchase_orders.purchase_order_id

