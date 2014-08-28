- view: packed_line_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

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

  - dimension: state
    sql: ${TABLE}.state

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - packed_line_items.id
      - line_items.product_name
      - line_items.id
      - packing_lists.id
        # Counters for views that join 'packed_line_items'
      - packed_line_items.count
      - packing_list_items.count

