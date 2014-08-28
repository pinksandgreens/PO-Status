- view: drop_shippers
  fields:

  - dimension: id
    primary_key: true
    type: int
    sql: ${TABLE}.id

  - dimension: account_manager_user_id
    type: int
    sql: ${TABLE}.account_manager_user_id

  - dimension: address1
    sql: ${TABLE}.address1

  - dimension: address2
    sql: ${TABLE}.address2

  - dimension: approved
    type: yesno
    sql: ${TABLE}.approved

  - dimension: archive
    type: yesno
    sql: ${TABLE}.archive

  - dimension: asst_account_manager_user_id
    type: int
    sql: ${TABLE}.asst_account_manager_user_id

  - dimension: autoexport
    type: yesno
    sql: ${TABLE}.autoexport

  - dimension: city
    sql: ${TABLE}.city

  - dimension: credit_references
    sql: ${TABLE}.credit_references

  - dimension: customer_service_contact_info
    sql: ${TABLE}.customer_service_contact_info

  - dimension: disabled
    type: yesno
    sql: ${TABLE}.disabled

  - dimension: do_not_contact
    type: yesno
    sql: ${TABLE}.do_not_contact

  - dimension: duns_number
    sql: ${TABLE}.duns_number

  - dimension: federal_tax_id
    sql: ${TABLE}.federal_tax_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: parent_company
    sql: ${TABLE}.parent_company

  - dimension: payment_terms_id
    type: int
    sql: ${TABLE}.payment_terms_id

  - dimension: paypal_email
    sql: ${TABLE}.paypal_email

  - dimension: ranking
    type: int
    sql: ${TABLE}.ranking

  - dimension: return_drop_shipper_id
    type: int
    sql: ${TABLE}.return_drop_shipper_id

  - dimension: sale_type
    sql: ${TABLE}.sale_type

  - dimension_group: settings_updated
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.settings_updated_at

  - dimension: shipping_companies
    sql: ${TABLE}.shipping_companies

  - dimension: shipping_expectations_id
    type: int
    sql: ${TABLE}.shipping_expectations_id

  - dimension: shipping_types
    sql: ${TABLE}.shipping_types

  - dimension: state
    sql: ${TABLE}.state

  - dimension: type
    sql: ${TABLE}.type

  - dimension: uuid
    sql: ${TABLE}.uuid

  - dimension: zip
    sql: ${TABLE}.zip

  - measure: count
    type: count
    detail: detail*


  # ----- Detail ------
  sets:
    detail:
      - name
      - id
        # Counters for views that join 'drop_shippers'
      - base_products.count
      - drop_shipper_contacts.count
      - drop_shippers_users.count
      - products.count
      - purchase_orders.count
      - shipping_exports.count

