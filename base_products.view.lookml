- view: base_products
  fields:

  - dimension: base_product_id
    primary_key: true
    sql: ${TABLE}.base_product_id

  - dimension: asst_account_manager_user_id
    type: int
    sql: ${TABLE}.asst_account_manager_user_id

  - dimension: drop_shipper_id
    type: int
    hidden: true
    sql: ${TABLE}.drop_shipper_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: no_expedited_shipping
    type: yesno
    sql: ${TABLE}.no_expedited_shipping

  - dimension: product_category_id
    type: int
    sql: ${TABLE}.product_category_id

  - dimension: product_category_ltree
    sql: ${TABLE}.product_category_ltree

  - dimension: product_info_id
    type: int
    sql: ${TABLE}.product_info_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name
      - base_product_id
      - drop_shippers.name
      - drop_shippers.id
        # Counters for views that join 'base_products'
      - base_skus.count
      - base_sku_stats.count
      - skus.count

