- view: customer_service_ticket_api_calls
  fields:

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: remote_id
    sql: ${TABLE}.remote_id

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension: ticket_id
    type: int
    sql: ${TABLE}.ticket_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:

