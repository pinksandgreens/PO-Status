- view: que_jobs
  fields:

  - dimension: args
    sql: ${TABLE}.args

  - dimension: error_count
    type: int
    sql: ${TABLE}.error_count

  - dimension: job_class
    sql: ${TABLE}.job_class

  - dimension: job_id
    type: int
    sql: ${TABLE}.job_id

  - dimension: last_error
    sql: ${TABLE}.last_error

  - dimension: priority
    type: number
    sql: ${TABLE}.priority

  - dimension: queue
    sql: ${TABLE}.queue

  - dimension_group: run
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.run_at

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:

