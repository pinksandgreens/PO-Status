- view: promotions_sites
  fields:

  - dimension: promotion_id
    type: int
    hidden: true
    sql: ${TABLE}.promotion_id

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - promotions.name
      - promotions.potential_promotion_id
      - sites.id

