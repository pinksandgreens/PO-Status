- view: product_summary
  fields:

  - dimension: active_user_price
    type: number
    sql: ${TABLE}.active_user_price

  - dimension: available
    type: yesno
    sql: ${TABLE}.available

  - dimension: channel_ids
    hidden: true
    sql: ${TABLE}.channel_ids

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_at

  - dimension: fake_sold_out
    type: yesno
    sql: ${TABLE}.fake_sold_out

  - dimension: normal_price
    type: number
    sql: ${TABLE}.normal_price

  - dimension: product_id
    type: int
    hidden: true
    sql: ${TABLE}.product_id

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension: stu_price
    type: number
    sql: ${TABLE}.stu_price

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - channels.id
      - products.variant_name
      - products.commission_rate_name
      - products.short_name
      - products.name
      - products.base_product_id

