- view: user_level_info
  fields:

  - dimension: name
    sql: ${TABLE}.name

  - dimension: number_of_orders
    type: int
    sql: ${TABLE}.number_of_orders

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name

