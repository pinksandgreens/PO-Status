- view: channel_highlighters
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: affiliate_preview
    type: yesno
    sql: ${TABLE}.affiliate_preview

  - dimension: channel_id
    type: int
    hidden: true
    sql: ${TABLE}.channel_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: highlight_type
    sql: ${TABLE}.highlight_type

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - channels.id

