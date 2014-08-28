- view: paypal_payments
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

  - dimension: correlation_id
    sql: ${TABLE}.correlation_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: detailed_status_code
    sql: ${TABLE}.detailed_status_code

  - dimension: fraud_review
    type: yesno
    sql: ${TABLE}.fraud_review

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: payer_id
    sql: ${TABLE}.payer_id

  - dimension: payment_gateway_account_id
    type: int
    sql: ${TABLE}.payment_gateway_account_id

  - dimension: status_code
    sql: ${TABLE}.status_code

  - dimension: token
    sql: ${TABLE}.token

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - orders.id
        # Counters for views that join 'paypal_payments'
      - paypal_refunds.count

