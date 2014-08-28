- view: purchase_orders_skus
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: asst_account_manager_user_id
    type: int
    sql: ${TABLE}.asst_account_manager_user_id

  - dimension: base_sku_id
    hidden: true
    sql: ${TABLE}.base_sku_id

  - dimension: product_cost
    type: number
    sql: ${TABLE}.product_cost

  - dimension: purchase_order_id
    type: int
    hidden: true
    sql: ${TABLE}.purchase_order_id

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: shipping_cost
    type: number
    sql: ${TABLE}.shipping_cost

  - dimension: sku_id
    type: int
    hidden: true
    sql: ${TABLE}.sku_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - base_skus.base_sku_id
      - base_skus.variant_name
      - base_skus.product_name
      - purchase_orders.purchase_order_id
      - skus.product_name
      - skus.id
      - skus.name

