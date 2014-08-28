- view: promotion_usages
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: amount
    type: number
    sql: ${TABLE}.amount

  - dimension: order_id
    type: int
    hidden: true
    sql: ${TABLE}.order_id

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
      - id
      - promotions.name
      - promotions.potential_promotion_id
      - orders.id
        # Counters for views that join 'promotion_usages'
      - line_items_promotion_usages.count

