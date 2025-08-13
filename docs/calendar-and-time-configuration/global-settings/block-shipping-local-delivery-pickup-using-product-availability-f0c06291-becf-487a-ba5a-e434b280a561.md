---
id: f0c06291-becf-487a-ba5a-e434b280a561
title: "Control Delivery Methods with Product Tags"
category: calendar-and-time-configuration
section: global-settings
slug: block-shipping-local-delivery-pickup-using-product-availability
crisp_updated_at: 1750741731000
crisp_url: https://help.birdchime.com/en-us/article/block-shipping-local-delivery-pickup-using-product-availability-t1zg9b/
description: "Control which products are available for specific delivery methods using product tags in Bird Pickup & Delivery"
---

**Control which products customers can select for shipping, local delivery, or store pickup using product tags.**

Product Availability lets you restrict delivery methods to specific products using Shopify product tags. You can include only tagged products or exclude tagged products from each delivery method.

${youtube}[Demonstrates the complete process of configuring product availability settings and adding tags to products](cywEtEfrHcA)

## Configure Product Availability Settings

**Choose your navigation path based on your store setup:**

- **Same schedule for all locations**: Go to **Bird App Settings > Pickup & Delivery > Edit Settings**
- **Different schedules per location**: Go to **Bird App Settings > Configure Locations > Select Location > Edit Settings**

1. Navigate to the **Product Availability** section
2. Select your desired delivery method (Shipping, Local Delivery, or Store Pickup)
3. Choose your availability option following the instructions below

### How Mixed Carts Work

When customers have mixed products in their cart, the system evaluates the entire cart, not individual products:

- **Include mode**: If any product lacks the required tag, the delivery method becomes unavailable for the entire cart
- **Exclude mode**: If any product has the exclusion tag, the delivery method becomes unavailable for the entire cart

**Example**: If you set "Include Products tagged with 'local-delivery'" and a customer adds both a tagged product and an untagged product to their cart, local delivery becomes unavailable.

**Important**: Mixed cart behavior affects the entire cart. If any product doesn't meet the criteria, the delivery method becomes unavailable.

### Include Specific Products Only

Select **Include Products tagged with** to make only tagged products available.

- Enter the exact tag name in the field
- Only products with this tag will show the delivery method
- All other products will be blocked

![Shows the Product Availability settings page with "Include Products tagged with" selected and "Local Delivery" entered in the tag field](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-05-27-at-52755_a3mdkr.png)

### Exclude Specific Products

Select **Exclude Products tagged with** to block tagged products from the delivery method.

- Enter the exact tag name in the field
- All products will be available except those with this tag
- Tagged products will be blocked

![Shows the Product Availability settings page with "Exclude Products tagged with" selected and "pickup" entered in the tag field](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-05-27-at-60934_1p14sn8.png)

4. **Save Changes** to apply your settings.

Products without the specified tags will be blocked from the chosen delivery method.

![Shows a product page where the Local Delivery option is not available because the product lacks the required tag](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1qq6n5z.png)

## Add Tags to Products in Shopify

1. Go to **Products** in your Shopify admin.
2. Select the product you want to tag.
3. Click the **three-dot menu** in the top-right corner.
4. Select **Add Tags**.

![Shows the product page with the three-dot menu open and "Add Tags" option highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image-3_1ei5qph.png)

5. Enter the tag name in the search box.
6. Select the tag from the dropdown.
7. Click **Save**.

![Shows the product page displaying the tag name in the product details](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1ulu0c0.png)

**Note**: Tags are case-sensitive. "Delivery" and "delivery" are treated as different tags.

## Related Articles

- [Set different availability rules for specific products](https://help.birdchime.com/en-us/article/product-override-g2yfl9/)
- [Set up general availability rules](https://help.birdchime.com/en-us/article/configure-availability-settings-199dozz/)
- [How to Block Dates from Calendar](https://help.birdchime.com/en-us/article/how-to-block-dates-from-calendar-tllghq/)


