- view: product_categories
  fields:

  - dimension: parent_product_category_id
    primary_key: true
    type: int
    sql: ${TABLE}.parent_product_category_id

  - dimension: ltree
    sql: ${TABLE}.ltree

  - dimension: name
    sql: ${TABLE}.name

  - dimension: product_category_id
    type: int
    sql: ${TABLE}.product_category_id

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - parent_product_category_id
      - name

