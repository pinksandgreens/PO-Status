- view: packing_list_items
  fields:

  - dimension: packing_list_item_id
    primary_key: true
    sql: ${TABLE}.packing_list_item_id

  - dimension: base_sku_id
    hidden: true
    sql: ${TABLE}.base_sku_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: external_id
    type: int
    sql: ${TABLE}.external_id

  - dimension: line_item_id
    type: int
    hidden: true
    sql: ${TABLE}.line_item_id

  - dimension: packed_line_item_id
    hidden: true
    sql: ${TABLE}.packed_line_item_id

  - dimension: packing_list_id
    type: int
    hidden: true
    sql: ${TABLE}.packing_list_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - packing_list_item_id
      - line_items.product_name
      - line_items.id
      - base_skus.base_sku_id
      - base_skus.variant_name
      - base_skus.product_name
      - packing_lists.id
      - packed_line_items.id
        # Counters for views that join 'packing_list_items'
      - packing_list_items_shipments.count

