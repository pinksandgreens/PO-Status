- view: return_labels
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: notes
    sql: ${TABLE}.notes

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: tracking_number
    sql: ${TABLE}.tracking_number

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - dimension: usps_service
    sql: ${TABLE}.usps_service

  - dimension: uuid
    sql: ${TABLE}.uuid

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - orders.id
        # Counters for views that join 'return_labels'
      - return_label_items.count

