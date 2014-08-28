- view: gift_certificate_payments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: authorization_amount
    type: number
    sql: ${TABLE}.authorization_amount

  - dimension: gift_certificate_id
    type: int
    hidden: true
    sql: ${TABLE}.gift_certificate_id

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
      - gift_certificates.id
        # Counters for views that join 'gift_certificate_payments'
      - gift_certificate_refunds.count

