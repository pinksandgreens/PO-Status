- view: pg_stat_statements
  fields:

  - dimension: blk_read_time
    type: number
    sql: ${TABLE}.blk_read_time

  - dimension: blk_write_time
    type: number
    sql: ${TABLE}.blk_write_time

  - dimension: calls
    type: number
    sql: ${TABLE}.calls

  - dimension: dbid
    sql: ${TABLE}.dbid

  - dimension: local_blks_dirtied
    type: number
    sql: ${TABLE}.local_blks_dirtied

  - dimension: local_blks_hit
    type: number
    sql: ${TABLE}.local_blks_hit

  - dimension: local_blks_read
    type: number
    sql: ${TABLE}.local_blks_read

  - dimension: local_blks_written
    type: number
    sql: ${TABLE}.local_blks_written

  - dimension: query
    sql: ${TABLE}.query

  - dimension: rows
    type: number
    sql: ${TABLE}.rows

  - dimension: shared_blks_dirtied
    type: number
    sql: ${TABLE}.shared_blks_dirtied

  - dimension: shared_blks_hit
    type: number
    sql: ${TABLE}.shared_blks_hit

  - dimension: shared_blks_read
    type: number
    sql: ${TABLE}.shared_blks_read

  - dimension: shared_blks_written
    type: number
    sql: ${TABLE}.shared_blks_written

  - dimension: temp_blks_read
    type: number
    sql: ${TABLE}.temp_blks_read

  - dimension: temp_blks_written
    type: number
    sql: ${TABLE}.temp_blks_written

  - dimension: total_time
    type: number
    sql: ${TABLE}.total_time

  - dimension: userid
    sql: ${TABLE}.userid

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:

