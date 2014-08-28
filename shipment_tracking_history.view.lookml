- view: shipment_tracking_history
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: picked_up
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.picked_up_at

  - dimension: shipment_id
    type: int
    hidden: true
    sql: ${TABLE}.shipment_id

  - dimension: shipment_state
    sql: ${TABLE}.shipment_state

  - dimension: tracking_method
    sql: ${TABLE}.tracking_method

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - shipments.id

