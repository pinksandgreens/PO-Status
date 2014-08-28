- view: orders
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_on

  - dimension: credit_amount
    type: number
    sql: ${TABLE}.credit_amount

  - dimension: email_address
    sql: ${TABLE}.email_address

  - dimension: gift_certificate_amount
    type: number
    sql: ${TABLE}.gift_certificate_amount

  - dimension: ip
    sql: ${TABLE}.ip

  - dimension: reward_amount
    type: number
    sql: ${TABLE}.reward_amount

  - dimension: session_id
    sql: ${TABLE}.session_id

  - dimension: session_state_id
    type: int
    sql: ${TABLE}.session_state_id

  - dimension: shipping_cost
    type: number
    sql: ${TABLE}.shipping_cost

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - dimension: state
    sql: ${TABLE}.state

  - dimension: total
    type: number
    sql: ${TABLE}.total

  - dimension: tsvector
    sql: ${TABLE}.tsvector

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - dimension: uuid
    sql: ${TABLE}.uuid

  - dimension: visit_source
    sql: ${TABLE}.visit_source

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - sites.id
        # Counters for views that join 'orders'
      - affiliate_commissions.count
      - affiliate_commissions_line_items.count
      - authnet_cim_payments.count
      - authnet_payments.count
      - credit_card_payments.count
      - customer_service_tickets.count
      - gift_certificate_payments.count
      - line_items.count
      - order_audits.count
      - order_billing_addresses.count
      - order_shipping_addresses.count
      - order_visit_sources.count
      - packing_lists.count
      - packing_lists_shipments.count
      - payments.count
      - paypal_payments.count
      - promotion_usages.count
      - refunds.count
      - return_label_items.count
      - return_labels.count
      - shipments.count
      - tanga_cash_payments.count

