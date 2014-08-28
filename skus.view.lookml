- view: skus
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: additional_cost
    type: number
    sql: ${TABLE}.additional_cost

  - dimension: additional_price
    type: number
    sql: ${TABLE}.additional_price

  - dimension: base_product_id
    hidden: true
    sql: ${TABLE}.base_product_id

  - dimension: base_sku_id
    hidden: true
    sql: ${TABLE}.base_sku_id

  - dimension: cost
    type: number
    sql: ${TABLE}.cost

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: estimated_weight
    type: number
    sql: ${TABLE}.estimated_weight

  - dimension: infinite_quantity
    type: yesno
    sql: ${TABLE}.infinite_quantity

  - dimension: items_per_shipment_fee
    type: int
    sql: ${TABLE}.items_per_shipment_fee

  - dimension: max_items_orders
    type: int
    sql: ${TABLE}.max_items_orders

  - dimension: max_quantity_per_order
    type: int
    sql: ${TABLE}.max_quantity_per_order

  - dimension: measured_weight
    type: number
    sql: ${TABLE}.measured_weight

  - dimension: media_id
    type: int
    hidden: true
    sql: ${TABLE}.media_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: normal_price
    type: number
    sql: ${TABLE}.normal_price

  - dimension: original_quantity_delete_me
    type: int
    sql: ${TABLE}.original_quantity_delete_me

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: product_id
    type: int
    hidden: true
    sql: ${TABLE}.product_id

  - dimension: product_name
    sql: ${TABLE}.product_name

  - dimension: quantity_delete_me
    type: int
    sql: ${TABLE}.quantity_delete_me

  - dimension: shipping_cost
    type: number
    sql: ${TABLE}.shipping_cost

  - dimension: shipping_cost_with_another_item
    type: number
    sql: ${TABLE}.shipping_cost_with_another_item

  - dimension: shipping_price
    type: number
    sql: ${TABLE}.shipping_price

  - dimension: shipping_price_with_another_item
    type: number
    sql: ${TABLE}.shipping_price_with_another_item

  - dimension: sku_code_delete_me
    sql: ${TABLE}.sku_code_delete_me

  - dimension: sku_info_id
    type: int
    sql: ${TABLE}.sku_info_id

  - dimension: stu_price
    type: number
    sql: ${TABLE}.stu_price

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: vendor_sku_code
    sql: ${TABLE}.vendor_sku_code

  - dimension: vip_price
    type: number
    sql: ${TABLE}.vip_price

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - product_name
      - id
      - name
      - base_products.name
      - base_products.base_product_id
      - base_skus.base_sku_id
      - base_skus.variant_name
      - base_skus.product_name
      - medias.filename
      - medias.id
      - medias.s3_filename
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id
        # Counters for views that join 'skus'
      - cart_items.count
      - customer_service_tickets.count
      - inventory_movements.count
      - line_items.count
      - medias.count
      - product_medias.count
      - purchase_orders_skus.count
      - sku_stats.count

