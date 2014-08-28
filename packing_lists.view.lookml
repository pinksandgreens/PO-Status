- view: packing_lists
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: expedited
    type: yesno
    sql: ${TABLE}.expedited

  - dimension: fulfiller_id
    sql: ${TABLE}.fulfiller_id

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: priority_shipping
    type: yesno
    sql: ${TABLE}.priority_shipping

  - dimension: shipping_export_id
    type: int
    hidden: true
    sql: ${TABLE}.shipping_export_id

  - dimension: shipping_method
    sql: ${TABLE}.shipping_method

  - dimension: uuid
    type: int
    sql: ${TABLE}.uuid

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - orders.id
      - shipping_exports.name
      - shipping_exports.id
        # Counters for views that join 'packing_lists'
      - fosdick_returns.count
      - line_items.count
      - packed_line_items.count
      - packing_list_items.count
      - packing_lists_shipments.count
      - third_party_interactions.count

