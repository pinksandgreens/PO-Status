- view: cart_addresses
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: address1
    sql: ${TABLE}.address1

  - dimension: address2
    sql: ${TABLE}.address2

  - dimension: city
    sql: ${TABLE}.city

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: name
    sql: ${TABLE}.name

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: state
    sql: ${TABLE}.state

  - dimension: usps_recommendation_id
    type: int
    sql: ${TABLE}.usps_recommendation_id

  - dimension: zip
    sql: ${TABLE}.zip

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name
      - id

