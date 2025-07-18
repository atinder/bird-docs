---
id: f0c06291-becf-487a-ba5a-e434b280a561
title: "Block Shipping / Local Delivery / Pickup using Product availability"
category: calendar-and-time-configuration
section: global-settings
slug: block-shipping-local-delivery-pickup-using-product-availability
crisp_updated_at: 1750741731000
crisp_url: https://help.birdchime.com/en-us/article/block-shipping-local-delivery-pickup-using-product-availability-t1zg9b/
description: ""
---

### What is the Product Availability Feature?

The **Product Availability** feature in the Bird App allows you to control which products are available or unavailable for specific delivery methods— **Shipping**, **Local Delivery**, or **Store Pickup**—by using product tags. This feature is helpful when restricting certain delivery methods to particular products, improving control over fulfillment options.

### When to Use Product Availability?

Use this feature when:

* You only want to offer a delivery method (Local Delivery, Store Pickup, Shipping) for specific products.
* You need to block certain delivery methods for other products.
* You want to exclude certain products from a delivery method while keeping others available.

|| Note: Tags are case-sensitive. For example, "Delivery" and "delivery" are treated as two different tags. Ensure tags are applied correctly.

${youtube}[](cywEtEfrHcA)
## How to Block Shipping / Local Delivery / Pickup on Specific Products

1. Navigate to **Pickup & Delivery** or **Configure locations** or **Shipping** > **Product Availability** settings.
2. **Choose Availability Option**:

**Include Specific Products**:
* Select **Include** **Products tagged with**.
* Enter the tag(s) corresponding to products you want to make available for the selected delivery method.
* Only products with these tags will be available for this delivery method.

![Products with 'Local Delivery' tag will be included](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-05-27-at-52755_a3mdkr.png)
**Exclude Specific Products**:
* Select **Exclude Products tagged with**.
* Enter the tag(s) corresponding to products you want to exclude from the selected delivery method.
* All products will be available for this delivery method **except** those with these tags.

![Products with 'pickup' tag will be excluded](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-05-27-at-60934_1p14sn8.png)
3. **Save Changes.**

Products without the specified tags will be blocked from the chosen delivery method.

![Result: A product without the Local Delivery tag](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1qq6n5z.png)

| Important Note:
| If a customer's cart contains a mix of products with different availability settings for a delivery method, the system will evaluate the entire cart:
| For **Include Specific Products**, if any product in the cart lacks the required tag, the delivery method will be unavailable.
| For **Exclude Specific Products**, if any product in the cart has the exclusion tag, the delivery method will be unavailable.

## Add Tag to Products in Shopify

1. In Shopify, go to Products and select the product you wish to tag.
2. Click the three-dot menu in the top-right corner of the product page.
3. Select Add Tags.

![Choose products to add Tag for Availability](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image-3_1ei5qph.png)

4. Enter the relevant tag in the search box, select it, and save.

![Added Tags to product](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1ulu0c0.png)

Related Document: [Product Override](https://help.birdchime.com/en-us/article/product-override-g2yfl9/)
