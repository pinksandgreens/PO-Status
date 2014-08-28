- view: purchase_orders
  fields:

  - dimension: purchase_order_id
    primary_key: true
    type: int
    sql: ${TABLE}.purchase_order_id

  - dimension_group: completed
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.completed_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: drop_shipper_id
    type: int
    hidden: true
    sql: ${TABLE}.drop_shipper_id

  - dimension: shipping_cost
    type: number
    sql: ${TABLE}.shipping_cost

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - purchase_order_id
      - drop_shippers.name
      - drop_shippers.id
        # Counters for views that join 'purchase_orders'
      - line_items.count
      - purchase_order_payments.count
      - purchase_orders_skus.count
      - shipping_exports.count

