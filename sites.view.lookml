- view: sites
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: domain
    sql: ${TABLE}.domain

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
        # Counters for views that join 'sites'
      - affiliate_commissions_line_items.count
      - carts.count
      - channels.count
      - contents.count
      - gift_certificates.count
      - highlighted_links.count
      - orders.count
      - promotions.count
      - promotions_sites.count

