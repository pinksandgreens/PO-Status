- view: tracking_imports
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

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
        # Counters for views that join 'tracking_imports'
      - packing_lists_shipments.count
      - shipments.count

