- view: drop_shippers_users
  fields:

  - dimension: drop_shipper_id
    type: int
    hidden: true
    sql: ${TABLE}.drop_shipper_id

  - dimension: user_id
    type: int
    sql: ${TABLE}.user_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - drop_shippers.name
      - drop_shippers.id

