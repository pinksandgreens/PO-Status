- view: customer_service_tickets
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: additional_tags
    sql: ${TABLE}.additional_tags

  - dimension: body
    sql: ${TABLE}.body

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: email
    sql: ${TABLE}.email

  - dimension: name
    sql: ${TABLE}.name

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: remote_id
    sql: ${TABLE}.remote_id

  - dimension: sku_ids
    hidden: true
    sql: ${TABLE}.sku_ids

  - dimension: subject
    sql: ${TABLE}.subject

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
      - name
      - orders.id
      - skus.product_name
      - skus.id
      - skus.name

