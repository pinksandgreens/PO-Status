- view: base_skus
  fields:

  - dimension: base_sku_id
    primary_key: true
    sql: ${TABLE}.base_sku_id

  - dimension: allow_overselling
    type: yesno
    sql: ${TABLE}.allow_overselling

  - dimension: automatic_inventory_sync
    type: yesno
    sql: ${TABLE}.automatic_inventory_sync

  - dimension: base_product_id
    hidden: true
    sql: ${TABLE}.base_product_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: product_name
    sql: ${TABLE}.product_name

  - dimension: tanga_item_id
    sql: ${TABLE}.tanga_item_id

  - dimension: use_warehouse_inventory
    type: yesno
    sql: ${TABLE}.use_warehouse_inventory

  - dimension: variant_name
    sql: ${TABLE}.variant_name

  - dimension: variants
    sql: ${TABLE}.variants

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - base_sku_id
      - variant_name
      - product_name
      - base_products.name
      - base_products.base_product_id
        # Counters for views that join 'base_skus'
      - base_sku_stats.count
      - fosdick_returns.count
      - inventory_movements.count
      - line_items.count
      - packing_list_items.count
      - purchase_orders_skus.count
      - skus.count

