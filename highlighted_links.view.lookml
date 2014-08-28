- view: highlighted_links
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: channel_id
    type: int
    hidden: true
    sql: ${TABLE}.channel_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: description
    sql: ${TABLE}.description

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_at

  - dimension: link_type
    sql: ${TABLE}.link_type

  - dimension: name
    sql: ${TABLE}.name

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension: url
    sql: ${TABLE}.url

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - name
      - channels.id
      - sites.id

