- view: shipping_exports
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: drop_shipper_id
    type: int
    hidden: true
    sql: ${TABLE}.drop_shipper_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: purchase_order_id
    type: int
    hidden: true
    sql: ${TABLE}.purchase_order_id

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
      - name
      - id
      - purchase_orders.purchase_order_id
      - drop_shippers.name
      - drop_shippers.id
        # Counters for views that join 'shipping_exports'
      - packing_lists.count
      - shipping_export_files.count

