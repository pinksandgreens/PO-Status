- view: contents
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: body
    sql: ${TABLE}.body

  - dimension: meta_description
    sql: ${TABLE}.meta_description

  - dimension: site_id
    type: int
    hidden: true
    sql: ${TABLE}.site_id

  - dimension: slug
    sql: ${TABLE}.slug

  - dimension: textile
    type: yesno
    sql: ${TABLE}.textile

  - dimension: title
    sql: ${TABLE}.title

  - dimension: type
    sql: ${TABLE}.type

  - dimension: url
    sql: ${TABLE}.url

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - sites.id

