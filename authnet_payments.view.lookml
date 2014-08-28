- view: authnet_payments
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

  - dimension: avs_postal_match
    sql: ${TABLE}.avs_postal_match

  - dimension: avs_result_code
    sql: ${TABLE}.avs_result_code

  - dimension: avs_street_match
    sql: ${TABLE}.avs_street_match

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

  - dimension: cvv_result_code
    sql: ${TABLE}.cvv_result_code

  - dimension: detailed_status_code
    sql: ${TABLE}.detailed_status_code

  - dimension: fraud_review
    type: yesno
    sql: ${TABLE}.fraud_review

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: payment_gateway_account_id
    type: int
    sql: ${TABLE}.payment_gateway_account_id

  - dimension: status_code
    type: int
    sql: ${TABLE}.status_code

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - orders.id
        # Counters for views that join 'authnet_payments'
      - authnet_refunds.count

