- view: order_visit_sources
  fields:

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

  - dimension: referer_host
    sql: ${TABLE}.referer_host

  - dimension: referer_url
    sql: ${TABLE}.referer_url

  - dimension: utm_source
    sql: ${TABLE}.utm_source

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - orders.id

