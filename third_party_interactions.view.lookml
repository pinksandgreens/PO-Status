- view: third_party_interactions
  fields:

  - dimension: third_party_interaction_id
    primary_key: true
    sql: ${TABLE}.third_party_interaction_id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_at

  - dimension: data_received
    sql: ${TABLE}.data_received

  - dimension: data_sent
    sql: ${TABLE}.data_sent

  - dimension: packing_list_id
    type: int
    hidden: true
    sql: ${TABLE}.packing_list_id

  - dimension: reason
    sql: ${TABLE}.reason

  - dimension: result_status
    sql: ${TABLE}.result_status

  - dimension: url
    sql: ${TABLE}.url

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - third_party_interaction_id
      - packing_lists.id

