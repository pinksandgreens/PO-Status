- view: medias
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: content_type
    sql: ${TABLE}.content_type

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.created_on

  - dimension: filename
    sql: ${TABLE}.filename

  - dimension: height
    type: int
    sql: ${TABLE}.height

  - dimension: media_of_id
    type: int
    sql: ${TABLE}.media_of_id

  - dimension: media_of_type
    sql: ${TABLE}.media_of_type

  - dimension: on_s3
    type: yesno
    sql: ${TABLE}.on_s3

  - dimension: on_s3_verified
    type: yesno
    sql: ${TABLE}.on_s3_verified

  - dimension: position
    type: int
    sql: ${TABLE}.position

  - dimension: s3_filename
    sql: ${TABLE}.s3_filename

  - dimension: size
    type: int
    sql: ${TABLE}.size

  - dimension: sku_id
    type: int
    hidden: true
    sql: ${TABLE}.sku_id

  - dimension: tag
    sql: ${TABLE}.tag

  - dimension: uuid
    sql: ${TABLE}.uuid

  - dimension: width
    type: int
    sql: ${TABLE}.width

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - filename
      - id
      - s3_filename
      - skus.product_name
      - skus.id
      - skus.name
        # Counters for views that join 'medias'
      - skus.count

