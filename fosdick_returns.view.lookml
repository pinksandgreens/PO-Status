- view: fosdick_returns
  fields:

  - dimension: fosdick_return_id
    primary_key: true
    type: int
    sql: ${TABLE}.fosdick_return_id

  - dimension: action
    sql: ${TABLE}.action

  - dimension: base_sku_id
    hidden: true
    sql: ${TABLE}.base_sku_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: packing_list_id
    type: int
    hidden: true
    sql: ${TABLE}.packing_list_id

  - dimension: quality_code
    type: int
    sql: ${TABLE}.quality_code

  - dimension: quantity_returned
    type: int
    sql: ${TABLE}.quantity_returned

  - dimension: reason_code
    type: int
    sql: ${TABLE}.reason_code

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - fosdick_return_id
      - packing_lists.id
      - base_skus.base_sku_id
      - base_skus.variant_name
      - base_skus.product_name

