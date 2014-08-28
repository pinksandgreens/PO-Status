- view: refunds
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: action_taken
    sql: ${TABLE}.action_taken

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: internal_note
    sql: ${TABLE}.internal_note

  - dimension: issue_gift_certificate
    type: yesno
    sql: ${TABLE}.issue_gift_certificate

  - dimension: note_to_customer
    sql: ${TABLE}.note_to_customer

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: refund_reason
    sql: ${TABLE}.refund_reason

  - dimension: rma_code
    sql: ${TABLE}.rma_code

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
      - orders.id
        # Counters for views that join 'refunds'
      - authnet_cim_refunds.count
      - authnet_refunds.count
      - gift_certificate_refunds.count
      - gift_certificates.count
      - line_item_refunds.count
      - paypal_refunds.count
      - tanga_cash_refunds.count

