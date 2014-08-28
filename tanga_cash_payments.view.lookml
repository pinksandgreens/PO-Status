- view: tanga_cash_payments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: authorization_amount
    type: number
    sql: ${TABLE}.authorization_amount

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - orders.id
        # Counters for views that join 'tanga_cash_payments'
      - tanga_cash_refunds.count

