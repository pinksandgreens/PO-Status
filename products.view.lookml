- view: products
  fields:

  - dimension: base_product_id
    primary_key: true
    sql: ${TABLE}.base_product_id

  - dimension: active_user_price
    type: number
    sql: ${TABLE}.active_user_price

  - dimension: additional_details
    sql: ${TABLE}.additional_details

  - dimension: additional_info
    sql: ${TABLE}.additional_info

  - dimension: admin_edit_version
    type: int
    sql: ${TABLE}.admin_edit_version

  - dimension: archived
    type: yesno
    sql: ${TABLE}.archived

  - dimension: brand
    sql: ${TABLE}.brand

  - dimension: commission_rate_name
    sql: ${TABLE}.commission_rate_name

  - dimension: condition
    sql: ${TABLE}.condition

  - dimension: cost
    type: number
    sql: ${TABLE}.cost

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension: drop_shipper_id
    type: int
    hidden: true
    sql: ${TABLE}.drop_shipper_id

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_at

  - dimension: estimated_shipping_days_end
    type: int
    sql: ${TABLE}.estimated_shipping_days_end

  - dimension: estimated_shipping_days_start
    type: int
    sql: ${TABLE}.estimated_shipping_days_start

  - dimension: external_url
    sql: ${TABLE}.external_url

  - dimension: fake_sold_out
    type: yesno
    sql: ${TABLE}.fake_sold_out

  - dimension: features
    sql: ${TABLE}.features

  - dimension: gender
    sql: ${TABLE}.gender

  - dimension: id
    type: int
    sql: ${TABLE}.id

  - dimension: items_per_pack
    type: int
    sql: ${TABLE}.items_per_pack

  - dimension: items_per_shipment_fee
    type: int
    sql: ${TABLE}.items_per_shipment_fee

  - dimension: max_items_orders
    type: int
    sql: ${TABLE}.max_items_orders

  - dimension: max_personalized_text_length
    type: int
    sql: ${TABLE}.max_personalized_text_length

  - dimension: max_quantity_per_order
    type: int
    sql: ${TABLE}.max_quantity_per_order

  - dimension: msrp
    type: number
    sql: ${TABLE}.msrp

  - dimension: name
    sql: ${TABLE}.name

  - dimension: needs_purchase_order
    type: yesno
    sql: ${TABLE}.needs_purchase_order

  - dimension: normal_price
    type: number
    sql: ${TABLE}.normal_price

  - dimension: not_for_archive
    type: yesno
    sql: ${TABLE}.not_for_archive

  - dimension: paypal_allowed
    type: yesno
    sql: ${TABLE}.paypal_allowed

  - dimension: product_info_id
    type: int
    sql: ${TABLE}.product_info_id

  - dimension: product_type
    sql: ${TABLE}.product_type

  - dimension: purchase_order_drop_shipper_id
    type: int
    sql: ${TABLE}.purchase_order_drop_shipper_id

  - dimension: redirect_url
    sql: ${TABLE}.redirect_url

  - dimension: refurbished
    type: yesno
    sql: ${TABLE}.refurbished

  - dimension: returnable
    type: yesno
    sql: ${TABLE}.returnable

  - dimension: search_tags
    sql: ${TABLE}.search_tags

  - dimension: secret_id
    sql: ${TABLE}.secret_id

  - dimension_group: shipment
    type: time
    timeframes: [date, week, month]
    sql: ${TABLE}.shipment_date

  - dimension: shipping_cost
    type: number
    sql: ${TABLE}.shipping_cost

  - dimension: shipping_cost_with_another_item
    type: number
    sql: ${TABLE}.shipping_cost_with_another_item

  - dimension: shipping_method
    sql: ${TABLE}.shipping_method

  - dimension: shipping_price
    type: number
    sql: ${TABLE}.shipping_price

  - dimension: shipping_price_with_another_item
    type: number
    sql: ${TABLE}.shipping_price_with_another_item

  - dimension: ships_by_xmas
    type: yesno
    sql: ${TABLE}.ships_by_xmas

  - dimension: ships_to_ak_hi
    type: yesno
    sql: ${TABLE}.ships_to_ak_hi

  - dimension: ships_to_military
    type: yesno
    sql: ${TABLE}.ships_to_military

  - dimension: ships_to_po_box
    type: yesno
    sql: ${TABLE}.ships_to_po_box

  - dimension: ships_to_us_territory
    type: yesno
    sql: ${TABLE}.ships_to_us_territory

  - dimension: short_name
    sql: ${TABLE}.short_name

  - dimension: sku_code_delete_me
    sql: ${TABLE}.sku_code_delete_me

  - dimension: sku_notes
    sql: ${TABLE}.sku_notes

  - dimension: skus_have_same_weight
    type: yesno
    sql: ${TABLE}.skus_have_same_weight

  - dimension: slug
    sql: ${TABLE}.slug

  - dimension: specifications
    sql: ${TABLE}.specifications

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension: stu_price
    type: number
    sql: ${TABLE}.stu_price

  - dimension: subtitle
    sql: ${TABLE}.subtitle

  - dimension: tsvector
    sql: ${TABLE}.tsvector

  - dimension: upc
    sql: ${TABLE}.upc

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: upsell_product_id
    type: int
    sql: ${TABLE}.upsell_product_id

  - dimension: uuid
    sql: ${TABLE}.uuid

  - dimension: variant_name
    sql: ${TABLE}.variant_name

  - dimension: vendor_id
    type: int
    sql: ${TABLE}.vendor_id

  - dimension: warehouse_location
    sql: ${TABLE}.warehouse_location

  - dimension: warranty_days
    type: int
    sql: ${TABLE}.warranty_days

  - dimension: weight
    type: number
    sql: ${TABLE}.weight

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - variant_name
      - commission_rate_name
      - short_name
      - name
      - base_product_id
      - drop_shippers.name
      - drop_shippers.id
        # Counters for views that join 'products'
      - channels_products.count
      - line_items.count
      - products_promotions.count
      - product_stats.count
      - product_summary.count
      - promotions.count
      - purchase_permissions.count
      - skus.count
      - sku_stats.count

