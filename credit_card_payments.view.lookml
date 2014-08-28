- view: credit_card_payments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: authorization_amount
    type: number
    sql: ${TABLE}.authorization_amount

  - dimension: authorization_id
    sql: ${TABLE}.authorization_id

  - dimension: capture_amount
    type: number
    sql: ${TABLE}.capture_amount

  - dimension: capture_id
    sql: ${TABLE}.capture_id

  - dimension: cc_expiry
    sql: ${TABLE}.cc_expiry

  - dimension: cc_last_4_digits
    sql: ${TABLE}.cc_last_4_digits

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

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

