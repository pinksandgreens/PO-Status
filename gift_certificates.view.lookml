- view: gift_certificates
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: active
    type: yesno
    sql: ${TABLE}.active

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: code
    sql: ${TABLE}.code

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_on

  - dimension: email_address
    sql: ${TABLE}.email_address

  - dimension: giver_id
    type: int
    sql: ${TABLE}.giver_id

  - dimension: original_amount
    type: number
    sql: ${TABLE}.original_amount

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: refund_id
    type: int
    hidden: true
    sql: ${TABLE}.refund_id

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - refunds.id
      - sites.id
        # Counters for views that join 'gift_certificates'
      - gift_certificate_payments.count

