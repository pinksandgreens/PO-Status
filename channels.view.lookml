- view: channels
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

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

  - dimension: estimated_delivery_date_text
    sql: ${TABLE}.estimated_delivery_date_text

  - dimension: express_checkout
    type: yesno
    sql: ${TABLE}.express_checkout

  - dimension: front_page
    type: yesno
    sql: ${TABLE}.front_page

  - dimension: hidden
    type: yesno
    sql: ${TABLE}.hidden

  - dimension: parent_id
    type: int
    sql: ${TABLE}.parent_id

  - dimension: postpone_product_sales
    type: yesno
    sql: ${TABLE}.postpone_product_sales

  - dimension: products_browsable
    type: yesno
    sql: ${TABLE}.products_browsable

  - dimension: seo_description
    sql: ${TABLE}.seo_description

  - dimension: show_sold_out_products
    type: yesno
    sql: ${TABLE}.show_sold_out_products

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - dimension: slug
    sql: ${TABLE}.slug

  - dimension: sort_order
    sql: ${TABLE}.sort_order

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension: subtitle
    sql: ${TABLE}.subtitle

  - dimension: tangathon
    type: yesno
    sql: ${TABLE}.tangathon

  - dimension: title
    sql: ${TABLE}.title

  - dimension: type
    sql: ${TABLE}.type

  - dimension_group: updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.updated_at

  - dimension: upsell
    type: yesno
    sql: ${TABLE}.upsell

  - dimension: uuid
    sql: ${TABLE}.uuid

  - dimension: vendor_description
    sql: ${TABLE}.vendor_description

  - dimension: vendor_partnership_description
    sql: ${TABLE}.vendor_partnership_description

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - sites.id
        # Counters for views that join 'channels'
      - channel_highlighters.count
      - channels_products.count
      - channels_promotions.count
      - highlighted_links.count
      - product_summary.count
      - promotions.count

