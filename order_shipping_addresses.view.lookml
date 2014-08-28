- view: order_shipping_addresses
  fields:

  - dimension: address1
    sql: ${TABLE}.address1

  - dimension: address2
    sql: ${TABLE}.address2

  - dimension: city
    sql: ${TABLE}.city

  - dimension: name
    sql: ${TABLE}.name

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: state
    sql: ${TABLE}.state

  - dimension: tsvector
    sql: ${TABLE}.tsvector

  - dimension: zip
    sql: ${TABLE}.zip

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name
      - orders.id

