- connection: tanga

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards
# 
# - base_view: affiliate_commissions
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: affiliate_commissions_line_items
#   joins:
#     - join: sites
#       foreign_key: site_id
# 
#     - join: line_items
#       foreign_key: line_item_id
# 
#     - join: orders
#       foreign_key: order_id
# 
#     - join: skus
#       foreign_key: line_items.sku_id
# 
#     - join: base_skus
#       foreign_key: line_items.base_sku_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: packing_lists
#       foreign_key: line_items.packing_list_id
# 
#     - join: products
#       foreign_key: line_items.product_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
# 
# - base_view: authnet_cim_payments
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: authnet_cim_refunds
#   joins:
#     - join: authnet_cim_payments
#       foreign_key: authnet_cim_payment_id
# 
#     - join: refunds
#       foreign_key: refund_id
# 
#     - join: orders
#       foreign_key: authnet_cim_payments.order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: authnet_payments
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: authnet_refunds
#   joins:
#     - join: refunds
#       foreign_key: refund_id
# 
#     - join: authnet_payments
#       foreign_key: authnet_payment_id
# 
#     - join: orders
#       foreign_key: refunds.order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: base_products
#   joins:
#     - join: drop_shippers
#       foreign_key: drop_shipper_id
# 
# 
# - base_view: base_sku_stats
#   joins:
#     - join: base_products
#       foreign_key: base_product_id
# 
#     - join: base_skus
#       foreign_key: base_sku_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
# 
# - base_view: base_skus
#   joins:
#     - join: base_products
#       foreign_key: base_product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
# 
# - base_view: buyable_product_ids
# 
# - base_view: cart_addresses
# 
# - base_view: cart_items
#   joins:
#     - join: skus
#       foreign_key: sku_id
# 
#     - join: carts
#       foreign_key: cart_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: base_skus
#       foreign_key: skus.base_sku_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: products
#       foreign_key: skus.product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: sites
#       foreign_key: carts.site_id
# 
# 
# - base_view: carts
#   joins:
#     - join: sites
#       foreign_key: site_id
# 
# 
# - base_view: channel_highlighters
#   joins:
#     - join: channels
#       foreign_key: channel_id
# 
#     - join: sites
#       foreign_key: channels.site_id
# 
# 
# - base_view: channels
#   joins:
#     - join: sites
#       foreign_key: site_id
# 
# 
# - base_view: channels_products
#   joins:
#     - join: channels
#       foreign_key: channel_id
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: sites
#       foreign_key: channels.site_id
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: channels_promotions
#   joins:
#     - join: channels
#       foreign_key: channel_id
# 
#     - join: promotions
#       foreign_key: promotion_id
# 
#     - join: sites
#       foreign_key: channels.site_id
# 
#     - join: products
#       foreign_key: promotions.product_ids
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: contents
#   joins:
#     - join: sites
#       foreign_key: site_id
# 
# 
# - base_view: credit_card_payments
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: customer_service_ticket_api_calls
# 
# - base_view: customer_service_tickets
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: skus
#       foreign_key: sku_ids
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: base_skus
#       foreign_key: skus.base_sku_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: products
#       foreign_key: skus.product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
# 
# - base_view: drop_shipper_contacts
#   joins:
#     - join: drop_shippers
#       foreign_key: drop_shipper_id
# 
# 
# - base_view: drop_shippers
# 
# - base_view: drop_shippers_users
#   joins:
#     - join: drop_shippers
#       foreign_key: drop_shipper_id
# 
# 
# - base_view: exact_target_queues
# 
# - base_view: fosdick_returns
#   joins:
#     - join: packing_lists
#       foreign_key: packing_list_id
# 
#     - join: base_skus
#       foreign_key: base_sku_id
# 
#     - join: orders
#       foreign_key: packing_lists.order_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: purchase_orders
#       foreign_key: shipping_exports.purchase_order_id
# 
#     - join: drop_shippers
#       foreign_key: shipping_exports.drop_shipper_id
# 
#     - join: base_products
#       foreign_key: base_skus.base_product_id
# 
# 
# - base_view: gift_certificate_payments
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: gift_certificates
#       foreign_key: gift_certificate_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: refunds
#       foreign_key: gift_certificates.refund_id
# 
# 
# - base_view: gift_certificate_refunds
#   joins:
#     - join: gift_certificate_payments
#       foreign_key: gift_certificate_payment_id
# 
#     - join: refunds
#       foreign_key: refund_id
# 
#     - join: orders
#       foreign_key: gift_certificate_payments.order_id
# 
#     - join: gift_certificates
#       foreign_key: gift_certificate_payments.gift_certificate_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: gift_certificates
#   joins:
#     - join: refunds
#       foreign_key: refund_id
# 
#     - join: sites
#       foreign_key: site_id
# 
#     - join: orders
#       foreign_key: refunds.order_id
# 
# 
# - base_view: highlighted_links
#   joins:
#     - join: channels
#       foreign_key: channel_id
# 
#     - join: sites
#       foreign_key: site_id
# 
# 
# - base_view: inventory_movements
#   joins:
#     - join: base_skus
#       foreign_key: base_sku_id
# 
#     - join: skus
#       foreign_key: sku_id
# 
#     - join: line_items
#       foreign_key: line_item_id
# 
#     - join: base_products
#       foreign_key: base_skus.base_product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: products
#       foreign_key: skus.product_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: packing_lists
#       foreign_key: line_items.packing_list_id
# 
#     - join: orders
#       foreign_key: line_items.order_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: line_item_refunds
#   joins:
#     - join: line_items
#       foreign_key: line_item_id
# 
#     - join: refunds
#       foreign_key: refund_id
# 
#     - join: skus
#       foreign_key: line_items.sku_id
# 
#     - join: base_skus
#       foreign_key: line_items.base_sku_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: packing_lists
#       foreign_key: line_items.packing_list_id
# 
#     - join: products
#       foreign_key: line_items.product_id
# 
#     - join: orders
#       foreign_key: line_items.order_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: line_items
#   joins:
#     - join: skus
#       foreign_key: sku_id
# 
#     - join: base_skus
#       foreign_key: base_sku_id
# 
#     - join: purchase_orders
#       foreign_key: purchase_order_id
# 
#     - join: packing_lists
#       foreign_key: packing_list_id
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: orders
#       foreign_key: order_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: purchase_orders.drop_shipper_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: line_items_promotion_usages
#   joins:
#     - join: line_items
#       foreign_key: line_item_id
# 
#     - join: promotion_usages
#       foreign_key: promotion_usage_id
# 
#     - join: skus
#       foreign_key: line_items.sku_id
# 
#     - join: base_skus
#       foreign_key: line_items.base_sku_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: packing_lists
#       foreign_key: line_items.packing_list_id
# 
#     - join: products
#       foreign_key: line_items.product_id
# 
#     - join: orders
#       foreign_key: line_items.order_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: promotions
#       foreign_key: promotion_usages.promotion_id
# 
#     - join: channels
#       foreign_key: promotions.channel_ids
# 
# 
# - base_view: medias
#   joins:
#     - join: skus
#       foreign_key: sku_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: base_skus
#       foreign_key: skus.base_sku_id
# 
#     - join: products
#       foreign_key: skus.product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
# 
# - base_view: order_audits
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: order_billing_addresses
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: order_shipping_addresses
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: order_visit_sources
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: orders
#   joins:
#     - join: sites
#       foreign_key: site_id
# 
# 
# - base_view: packed_line_items
#   joins:
#     - join: line_items
#       foreign_key: line_item_id
# 
#     - join: packing_lists
#       foreign_key: packing_list_id
# 
#     - join: skus
#       foreign_key: line_items.sku_id
# 
#     - join: base_skus
#       foreign_key: line_items.base_sku_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: products
#       foreign_key: line_items.product_id
# 
#     - join: orders
#       foreign_key: line_items.order_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
# 
# - base_view: packing_list_items
#   joins:
#     - join: line_items
#       foreign_key: line_item_id
# 
#     - join: base_skus
#       foreign_key: base_sku_id
# 
#     - join: packing_lists
#       foreign_key: packing_list_id
# 
#     - join: packed_line_items
#       foreign_key: packed_line_item_id
# 
#     - join: skus
#       foreign_key: line_items.sku_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: products
#       foreign_key: line_items.product_id
# 
#     - join: orders
#       foreign_key: line_items.order_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
# 
# - base_view: packing_list_items_shipments
#   joins:
#     - join: packing_list_items
#       foreign_key: packing_list_item_id
# 
#     - join: shipments
#       foreign_key: shipment_id
# 
#     - join: line_items
#       foreign_key: packing_list_items.line_item_id
# 
#     - join: base_skus
#       foreign_key: packing_list_items.base_sku_id
# 
#     - join: packing_lists
#       foreign_key: packing_list_items.packing_list_id
# 
#     - join: packed_line_items
#       foreign_key: packing_list_items.packed_line_item_id
# 
#     - join: skus
#       foreign_key: line_items.sku_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: products
#       foreign_key: line_items.product_id
# 
#     - join: orders
#       foreign_key: line_items.order_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: tracking_imports
#       foreign_key: shipments.tracking_import_id
# 
# 
# - base_view: packing_lists
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: shipping_exports
#       foreign_key: shipping_export_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: purchase_orders
#       foreign_key: shipping_exports.purchase_order_id
# 
#     - join: drop_shippers
#       foreign_key: shipping_exports.drop_shipper_id
# 
# 
# - base_view: packing_lists_shipments
#   joins:
#     - join: packing_lists
#       foreign_key: packing_list_id
# 
#     - join: shipments
#       foreign_key: shipment_id
# 
#     - join: tracking_imports
#       foreign_key: tracking_import_id
# 
#     - join: orders
#       foreign_key: order_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: purchase_orders
#       foreign_key: shipping_exports.purchase_order_id
# 
#     - join: drop_shippers
#       foreign_key: shipping_exports.drop_shipper_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: payments
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: paypal_payments
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: paypal_refunds
#   joins:
#     - join: refunds
#       foreign_key: refund_id
# 
#     - join: paypal_payments
#       foreign_key: paypal_payment_id
# 
#     - join: orders
#       foreign_key: refunds.order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: pg_stat_statements
# 
# - base_view: product_categories
# 
# - base_view: product_medias
#   joins:
#     - join: skus
#       foreign_key: sku_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: base_skus
#       foreign_key: skus.base_sku_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: products
#       foreign_key: skus.product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
# 
# - base_view: product_stats
#   joins:
#     - join: products
#       foreign_key: product_id
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: product_summary
#   joins:
#     - join: channels
#       foreign_key: channel_ids
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: sites
#       foreign_key: channels.site_id
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: products
#   joins:
#     - join: drop_shippers
#       foreign_key: drop_shipper_id
# 
# 
# - base_view: products_promotions
#   joins:
#     - join: promotions
#       foreign_key: promotion_id
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: channels
#       foreign_key: promotions.channel_ids
# 
#     - join: sites
#       foreign_key: promotions.site_ids
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: promotion_usages
#   joins:
#     - join: promotions
#       foreign_key: promotion_id
# 
#     - join: orders
#       foreign_key: order_id
# 
#     - join: channels
#       foreign_key: promotions.channel_ids
# 
#     - join: products
#       foreign_key: promotions.product_ids
# 
#     - join: sites
#       foreign_key: promotions.site_ids
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: promotions
#   joins:
#     - join: channels
#       foreign_key: channel_ids
# 
#     - join: products
#       foreign_key: product_ids
# 
#     - join: sites
#       foreign_key: site_ids
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: promotions_sites
#   joins:
#     - join: promotions
#       foreign_key: promotion_id
# 
#     - join: sites
#       foreign_key: site_id
# 
#     - join: channels
#       foreign_key: promotions.channel_ids
# 
#     - join: products
#       foreign_key: promotions.product_ids
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: purchase_order_payments
#   joins:
#     - join: purchase_orders
#       foreign_key: purchase_order_id
# 
#     - join: drop_shippers
#       foreign_key: purchase_orders.drop_shipper_id
# 
# 
# - base_view: purchase_orders
#   joins:
#     - join: drop_shippers
#       foreign_key: drop_shipper_id
# 
# 
# - base_view: purchase_orders_skus
#   joins:
#     - join: base_skus
#       foreign_key: base_sku_id
# 
#     - join: purchase_orders
#       foreign_key: purchase_order_id
# 
#     - join: skus
#       foreign_key: sku_id
# 
#     - join: base_products
#       foreign_key: base_skus.base_product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: products
#       foreign_key: skus.product_id
# 
# 
# - base_view: purchase_permissions
#   joins:
#     - join: products
#       foreign_key: product_id
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
# 
# - base_view: que_jobs
# 
# - base_view: refunds
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: return_label_items
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: line_items
#       foreign_key: line_item_id
# 
#     - join: return_labels
#       foreign_key: return_label_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: skus
#       foreign_key: line_items.sku_id
# 
#     - join: base_skus
#       foreign_key: line_items.base_sku_id
# 
#     - join: purchase_orders
#       foreign_key: line_items.purchase_order_id
# 
#     - join: packing_lists
#       foreign_key: line_items.packing_list_id
# 
#     - join: products
#       foreign_key: line_items.product_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
# 
# - base_view: return_labels
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: shipment_tracking_history
#   joins:
#     - join: shipments
#       foreign_key: shipment_id
# 
#     - join: tracking_imports
#       foreign_key: shipments.tracking_import_id
# 
#     - join: orders
#       foreign_key: shipments.order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: shipments
#   joins:
#     - join: tracking_imports
#       foreign_key: tracking_import_id
# 
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: shipping_export_files
#   joins:
#     - join: shipping_exports
#       foreign_key: shipping_export_id
# 
#     - join: purchase_orders
#       foreign_key: shipping_exports.purchase_order_id
# 
#     - join: drop_shippers
#       foreign_key: shipping_exports.drop_shipper_id
# 
# 
# - base_view: shipping_exports
#   joins:
#     - join: purchase_orders
#       foreign_key: purchase_order_id
# 
#     - join: drop_shippers
#       foreign_key: drop_shipper_id
# 
# 
# - base_view: sites
# 
# - base_view: sku_stats
#   joins:
#     - join: products
#       foreign_key: product_id
# 
#     - join: skus
#       foreign_key: sku_id
# 
#     - join: drop_shippers
#       foreign_key: products.drop_shipper_id
# 
#     - join: base_products
#       foreign_key: skus.base_product_id
# 
#     - join: base_skus
#       foreign_key: skus.base_sku_id
# 
#     - join: medias
#       foreign_key: skus.media_id
# 
# 
# - base_view: skus
#   joins:
#     - join: base_products
#       foreign_key: base_product_id
# 
#     - join: base_skus
#       foreign_key: base_sku_id
# 
#     - join: medias
#       foreign_key: media_id
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: drop_shippers
#       foreign_key: base_products.drop_shipper_id
# 
# 
# - base_view: tanga_cash_payments
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: tanga_cash_refunds
#   joins:
#     - join: tanga_cash_payments
#       foreign_key: tanga_cash_payment_id
# 
#     - join: refunds
#       foreign_key: refund_id
# 
#     - join: orders
#       foreign_key: tanga_cash_payments.order_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
# 
# - base_view: third_party_interactions
#   joins:
#     - join: packing_lists
#       foreign_key: packing_list_id
# 
#     - join: orders
#       foreign_key: packing_lists.order_id
# 
#     - join: shipping_exports
#       foreign_key: packing_lists.shipping_export_id
# 
#     - join: sites
#       foreign_key: orders.site_id
# 
#     - join: purchase_orders
#       foreign_key: shipping_exports.purchase_order_id
# 
#     - join: drop_shippers
#       foreign_key: shipping_exports.drop_shipper_id
# 
# 
# - base_view: tracking_imports
# 
# - base_view: user_level_info

