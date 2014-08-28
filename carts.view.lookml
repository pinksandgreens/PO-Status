- view: carts
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: cart_address_id
    type: int
    sql: ${TABLE}.cart_address_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email_address
    sql: ${TABLE}.email_address

  - dimension_group: reminder_email_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.reminder_email_sent_at

  - dimension: session_id
    sql: ${TABLE}.session_id

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - dimension: uuid
    sql: ${TABLE}.uuid

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - sites.id
        # Counters for views that join 'carts'
      - cart_items.count

