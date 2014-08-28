- view: packing_list_items_shipments
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: packing_list_item_id
    hidden: true
    sql: ${TABLE}.packing_list_item_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: shipment_id
    type: int
    hidden: true
    sql: ${TABLE}.shipment_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - packing_list_items.packing_list_item_id
      - shipments.id

