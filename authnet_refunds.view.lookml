- view: authnet_refunds
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: authnet_payment_id
    type: int
    hidden: true
    sql: ${TABLE}.authnet_payment_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: refund_id
    type: int
    hidden: true
    sql: ${TABLE}.refund_id

  - dimension: transaction_id
    sql: ${TABLE}.transaction_id

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - dimension: voided
    type: yesno
    sql: ${TABLE}.voided

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - refunds.id
      - authnet_payments.id

