- view: authnet_cim_payments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: authorization_amount
    type: number
    sql: ${TABLE}.authorization_amount

  - dimension: authorization_approval_code
    sql: ${TABLE}.authorization_approval_code

  - dimension: authorization_id
    sql: ${TABLE}.authorization_id

  - dimension: avs_result_code
    sql: ${TABLE}.avs_result_code

  - dimension: capture_amount
    type: number
    sql: ${TABLE}.capture_amount

  - dimension: capture_id
    sql: ${TABLE}.capture_id

  - dimension: cardholder_authentication_verification_response
    sql: ${TABLE}.cardholder_authentication_verification_response

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

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: payment_gateway_account_id
    type: int
    sql: ${TABLE}.payment_gateway_account_id

  - dimension: remote_billing_profile_id
    sql: ${TABLE}.remote_billing_profile_id

  - dimension: remote_payment_profile_id
    sql: ${TABLE}.remote_payment_profile_id

  - dimension: status_code
    sql: ${TABLE}.status_code

  - dimension: status_subcode
    sql: ${TABLE}.status_subcode

  - dimension: verification_md5
    sql: ${TABLE}.verification_md5

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - orders.id
        # Counters for views that join 'authnet_cim_payments'
      - authnet_cim_refunds.count

