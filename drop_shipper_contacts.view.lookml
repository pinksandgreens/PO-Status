- view: drop_shipper_contacts
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: contact_type
    sql: ${TABLE}.contact_type

  - dimension: drop_shipper_id
    type: int
    hidden: true
    sql: ${TABLE}.drop_shipper_id

  - dimension: email_address
    sql: ${TABLE}.email_address

  - dimension: name
    sql: ${TABLE}.name

  - dimension: phone
    sql: ${TABLE}.phone

  - dimension: phone1
    sql: ${TABLE}.phone1

  - dimension: phone2
    sql: ${TABLE}.phone2

  - dimension: title
    sql: ${TABLE}.title

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - id
      - name
      - drop_shippers.name
      - drop_shippers.id

