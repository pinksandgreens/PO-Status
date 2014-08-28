- view: shipping_export_files
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: content
    sql: ${TABLE}.content

  - dimension: shipping_export_id
    type: int
    hidden: true
    sql: ${TABLE}.shipping_export_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - shipping_exports.name
      - shipping_exports.id

