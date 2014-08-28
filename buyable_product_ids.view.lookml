- view: buyable_product_ids
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id

