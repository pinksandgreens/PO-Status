- view: channels_promotions
  fields:

  - dimension: channel_id
    type: int
    hidden: true
    sql: ${TABLE}.channel_id

  - dimension: promotion_id
    type: int
    hidden: true
    sql: ${TABLE}.promotion_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - channels.id
      - promotions.name
      - promotions.potential_promotion_id

