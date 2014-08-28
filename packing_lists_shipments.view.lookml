- view: packing_lists_shipments
  fields:

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: packing_list_id
    type: int
    hidden: true
    sql: ${TABLE}.packing_list_id

  - dimension: shipment_id
    type: int
    hidden: true
    sql: ${TABLE}.shipment_id

  - dimension: tracking_import_id
    type: int
    hidden: true
    sql: ${TABLE}.tracking_import_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - packing_lists.id
      - shipments.id
      - tracking_imports.id
      - orders.id

