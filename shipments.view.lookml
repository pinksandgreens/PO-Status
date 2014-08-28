- view: shipments
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: actual_picked_up
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.actual_picked_up_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension_group: delivered
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.delivered_at

  - dimension_group: email_sent
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.email_sent_at

  - dimension: invalid_number
    type: yesno
    sql: ${TABLE}.invalid_number

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension_group: picked_up
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.picked_up_at

  - dimension: shipment_state
    sql: ${TABLE}.shipment_state

  - dimension: tracking_import_id
    type: int
    hidden: true
    sql: ${TABLE}.tracking_import_id

  - dimension: tracking_method
    sql: ${TABLE}.tracking_method

  - dimension: tracking_number
    sql: ${TABLE}.tracking_number

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - tracking_imports.id
      - orders.id
        # Counters for views that join 'shipments'
      - packing_list_items_shipments.count
      - packing_lists_shipments.count
      - shipment_tracking_history.count

