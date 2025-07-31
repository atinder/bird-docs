---
id: ffbad786-b7a5-4f93-b600-61270f82244d
title: "Control Widget Visibility for Specific Products and Customers"
category: popular-use-cases
section: general
slug: hide-or-show-widget-for-certain-products-only
crisp_updated_at: 1750741990000
crisp_url: https://help.birdchime.com/en-us/article/hide-or-show-widget-for-certain-products-only-14nf3pv/
description: "Control widget visibility for specific products and customers using product overrides"
---

**Control which products and customers see the Bird Pickup & Delivery widget in your cart and checkout.**

Hide the widget for digital products like gift cards. Control visibility for wholesale customers. Show it only for specific product categories or customer types. Use product tags, customer tags, or both for precise control.

![Shows a cart with gift cards where the widget is hidden, demonstrating the product override functionality](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/giftcardhide_1xarlpy.png)

## Before You Start

**Complete these prerequisites before configuring widget visibility:**

- **Tag your products in Shopify:** Go to **Products > Select Product > Tags** and add relevant tags (e.g., "giftcard", "digital", "wholesale")
- **Tag your customers in Shopify:** Go to **Customers > Select Customer > Tags** and add customer tags (e.g., "wholesale", "b2b", "local")
- **Verify tag spelling:** Tags are case-sensitive - ensure exact spelling matches between Shopify and Bird App settings

**Need help tagging?** See our [Bulk Add Tags to Products](https://help.birdchime.com/en-us/article/bulk-add-tags-to-products-12xc905/) guide for efficient setup.

## Critical: Mixed Cart Behavior

**Important limitation to understand before configuring:**

Mixed carts behave differently with widget visibility rules. **The widget shows if ANY cart product has no hide rules**, even if other products have hide rules applied.

**Example:** If you hide the widget for "giftcard" products but a customer adds both a "giftcard" and a "shirt" to their cart, the widget will still appear because "shirt" has no hide rules.

**To ensure widget hides in mixed carts, apply hide rules to ALL products that should not show the widget, or use "Only Show Widget" rules instead of "Hide Widget" rules.**

## Configure Widget Visibility

**Set up precise widget display rules using product and customer tags.**

${frame}[Demonstrates the complete process of configuring widget visibility overrides for specific products](https://www.youtube.com/embed/OdQ7x68-iww)

### Step 1: Access Product Overrides

1. Navigate to **Bird App Settings > Product Overrides**

![Shows the Bird App Settings page with Product Overrides section highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-21459_128kql0.png)

2. Click **Add Override**

![Shows the Add Override button which opens the Widget Visibility Override option screen](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-21-172731_gdkhvy.png)

3. Select **Widget Visibility Override** under **Override Type**

### Step 2: Choose Control Method

**Under Control visibility, select one of three options:**

#### Option 1: Based on Products
**Control widget visibility using product tags or SKUs.**

- Enter product tags (e.g., "giftcard") or SKUs in the **Products** field
- Choose **Hide Widget** or **Only Show Widget** for those products

![Shows the completed widget visibility override configuration with product rules applied](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/visibility-override-last-image_9ogm17.png)

#### Option 2: Based on Customers  
**Control widget visibility using customer tags.**

- Enter customer tags (e.g., "wholesale", "b2b") in the **Customers** field
- Choose **Hide Widget** or **Only Show Widget** for those customers

#### Option 3: Based on Both
**Combine product and customer tags for precise control.**

- Enter both product tags/SKUs and customer tags
- Widget shows or hides only when both conditions match
- **Example:** Show widget only for "perishable" products bought by "local" customers

![Shows the completed widget visibility override configuration with both product and customer rules applied](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-07-04-at-51818_44n7d9.png)

### Step 3: Save and Preview

1. Click **Save** to apply your configuration
2. Use **Widget Preview** to verify your settings

![Shows the Widget Preview option that allows merchants to test their configuration before going live](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-04-at-11365_1foxsqn.png)

**That's it!** Your widget now displays according to your product and customer rules.

## Test Your Setup

**Verify your configuration works correctly before going live:**

1. **Test with tagged products:** Add products with your configured tags to cart
2. **Test with mixed carts:** Add both tagged and untagged products together
3. **Test customer rules:** Log in as a customer with configured tags
4. **Use Widget Preview:** Test different scenarios using the preview feature

**Pro Tip:** Test during low-traffic hours to avoid disrupting real customers.

## Important Behavior Notes

### Customer-Only Limitations

**Customer-based rules only affect the cart widget:**

- Customer tags control widget visibility on the cart page only
- For Shopify Plus stores: Customer tags don't affect the [checkout extension](https://help.birdchime.com/en-us/article/shopify-plus-checkout-integration-1q0psg2/) behavior
- For non-Plus Shopify stores: Customer tags only control the cart widget, since no checkout widget exists

## Related Articles

- [Product Override](https://help.birdchime.com/en-us/article/product-override-g2yfl9/) - Learn about other product override options
- [Enable the App in Your Theme](https://help.birdchime.com/en-us/article/how-to-enable-bird-pickup-and-delivery-date-widget-in-your-shopify-theme-450cbp/) - Set up widget display in your store
- [Manual Widget Placement](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/) - Customize widget location
