- view: line_items
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: base_sku_id
    hidden: true
    sql: ${TABLE}.base_sku_id

  - dimension_group: canceled
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.canceled_at

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: customation_attributes
    sql: ${TABLE}.customation_attributes

  - dimension: fosdick_order_id
    sql: ${TABLE}.fosdick_order_id

  - dimension: fosdick_order_status
    sql: ${TABLE}.fosdick_order_status

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: packing_list_id
    type: int
    hidden: true
    sql: ${TABLE}.packing_list_id

  - dimension: personalized_text
    sql: ${TABLE}.personalized_text

  - dimension: product_attributes
    sql: ${TABLE}.product_attributes

  - dimension: product_cost
    type: number
    decimals: 2
    sql: ${TABLE}.product_cost

  - dimension: product_id
    type: int
    hidden: true
    sql: ${TABLE}.product_id

  - dimension: product_name
    sql: ${TABLE}.product_name

  - dimension: product_price
    type: number
    sql: ${TABLE}.product_price

  - dimension: profit
    type: number
    sql: ${TABLE}.profit

  - dimension: purchase_order_id
    type: int
    hidden: true
    sql: ${TABLE}.purchase_order_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: sales_tax
    type: number
    sql: ${TABLE}.sales_tax

  - dimension: shipping_cost
    type: number
    sql: ${TABLE}.shipping_cost

  - dimension: shipping_price
    type: number
    sql: ${TABLE}.shipping_price

  - dimension: sku_id
    type: int
    hidden: true
    sql: ${TABLE}.sku_id

  - dimension: state
    sql: ${TABLE}.state

  - dimension: uuid
    type: int
    sql: ${TABLE}.uuid
    
  - dimension: po_status
    sql: (CASE WHEN line_items.state in ('in_transit','delivered','processed') THEN 'Approved' ELSE CASE WHEN line_items.state in ('canceled') THEN 'Order_Canceled' ELSE 'UnShipped' END END)

  - measure: count
    type: count
    detail: detail*
    
  - measure: total_cost
    type: sum
    decimals: 2
    sql: ${product_cost}
    
  - measure: total_qty
    decimals: 0
    sql: SUM(COALESCE(quantity, 0))
    
  # ----- Detail ------
  sets:
    detail:
      - product_name
      - id
      - skus.product_name
      - skus.id
      - skus.name
      - base_skus.base_sku_id
      - base_skus.variant_name
      - base_skus.product_name
      - purchase_orders.purchase_order_id
      - packing_lists.id
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id
      - orders.id
        # Counters for views that join 'line_items'
      - affiliate_commissions_line_items.count
      - inventory_movements.count
      - line_item_refunds.count
      - line_items_promotion_usages.count
      - packed_line_items.count
      - packing_list_items.count
      - return_label_items.count

