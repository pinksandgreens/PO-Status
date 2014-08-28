- view: gift_certificate_refunds
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: gift_certificate_payment_id
    type: int
    hidden: true
    sql: ${TABLE}.gift_certificate_payment_id

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: refund_id
    type: int
    hidden: true
    sql: ${TABLE}.refund_id

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
      - gift_certificate_payments.id
      - refunds.id

