- view: promotions
  fields:

  - dimension: potential_promotion_id
    primary_key: true
    type: int
    sql: ${TABLE}.potential_promotion_id

  - dimension: amount_off
    type: number
    sql: ${TABLE}.amount_off

  - dimension: applied_once_for_whole_order
    type: yesno
    sql: ${TABLE}.applied_once_for_whole_order

  - dimension: applied_per_quantity
    type: yesno
    sql: ${TABLE}.applied_per_quantity

  - dimension: channel_ids
    hidden: true
    sql: ${TABLE}.channel_ids

  - dimension: code
    sql: ${TABLE}.code

  - dimension: combinable
    type: yesno
    sql: ${TABLE}.combinable

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_at

  - dimension: expired
    type: yesno
    sql: ${TABLE}.expired

  - dimension: id
    type: int
    sql: ${TABLE}.id

  - dimension: minimum_order_amount
    type: number
    sql: ${TABLE}.minimum_order_amount

  - dimension: name
    sql: ${TABLE}.name

  - dimension: percent_off
    type: number
    sql: ${TABLE}.percent_off

  - dimension: product_ids
    hidden: true
    sql: ${TABLE}.product_ids

  - dimension: public
    type: yesno
    sql: ${TABLE}.public

  - dimension: quantity
    type: int
    sql: ${TABLE}.quantity

  - dimension: shipping
    type: yesno
    sql: ${TABLE}.shipping

  - dimension: site_ids
    hidden: true
    sql: ${TABLE}.site_ids

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - dimension: valid_with_special_pricing
    type: yesno
    sql: ${TABLE}.valid_with_special_pricing

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name
      - potential_promotion_id
      - channels.id
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id
      - sites.id
        # Counters for views that join 'promotions'
      - channels_promotions.count
      - products_promotions.count
      - promotions_sites.count
      - promotion_usages.count

