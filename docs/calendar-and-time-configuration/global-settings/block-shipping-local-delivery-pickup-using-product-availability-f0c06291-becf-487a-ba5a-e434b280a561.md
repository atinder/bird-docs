---
id: f0c06291-becf-487a-ba5a-e434b280a561
title: "Block Shipping / Local Delivery / Pickup using Product availability"
category: calendar-and-time-configuration
section: global-settings
slug: block-shipping-local-delivery-pickup-using-product-availability
crisp_updated_at: 1736253527000
---

###### What is the Product Availability Feature?

The Product Availability feature allows you to control which products are available for specific delivery methods (Local Delivery, Store Pickup, Shipping) using product tags. This feature is helpful when restricting certain delivery methods to particular products, improving control over fulfillment options.

###### When to Use Product Availability?

Use this feature when:

1. You want to offer a delivery method (Local Delivery, Store Pickup, Shipping) for specific products only.
2. You need to block certain delivery methods for other products.

| Important Notes:
| * Only products with assigned tags will be available for the selected delivery methods.
| * Untagged items will be marked as unavailable for that delivery method.
| * If a mixed cart contains both tagged and untagged products, all products will be considered unavailable for the selected delivery method.

${frame}[Understanding product availability](https://www.loom.com/embed/a29cd98dd97a492fa9059ece7722223d?sid=080af4f6-9e98-40c1-84e8-1e2110d3c1a6)

## How to Block Shipping / Local Delivery / Pickup on Specific Products

1. Navigate to **Configure Availability** or **Configure locations** > **Product Availability** settings.
2. To specify which products can be available for a certain delivery method, choose **Products Tagged With**.
3. Enter the tag(s) you want to use to restrict availability and click the **Add** button. Only products with these tags will be available for the selected method.

![Added Local Delivery tag](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_5stx3t.png)

4. Products without the specified tags will be blocked from the chosen delivery method.

![Result: A product without the Local Delivery tag](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1qq6n5z.png)

|| Note: Tags are case-sensitive. For example, "Delivery" and "delivery" are treated as two different tags. Ensure tags are applied correctly.

## Add Tag to Products in Shopify

1. In Shopify, go to Products and select the items you want to make available for a specific delivery method.
2. Click the three-dot menu in the top-right corner of the product page.
3. Select Add Tags.

![Choose products to add Tag for Availability](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image-3_1ei5qph.png)

4. Enter the relevant tag in the search box, select it, and save.

![Added Tags to product](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1ulu0c0.png)

Related Document: [Product Override](https://help.birdchime.com/en-us/article/product-override-g2yfl9/)
