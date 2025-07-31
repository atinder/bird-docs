---
id: e4653962-56ae-40cf-9818-d11a63a34ed9
title: "Use Shopify Local Delivery Rates with Bird App"
category: rates
section: via-shopify-admin
slug: how-to-configure-local-delivery-rates-in-the-shopify-admin
crisp_updated_at: 1750171404000
crisp_url: https://help.birdchime.com/en-us/article/how-to-configure-local-delivery-rates-in-the-shopify-admin-513tmv/
description: "Learn how to set up local delivery rates directly in your Shopify admin and integrate them with Bird Pickup & Delivery for seamless order processing."
---

# Use Shopify Local Delivery with Bird App

**Configure Shopify's built-in local delivery feature and integrate it with Bird Pickup & Delivery for automated order processing.**

Shopify's local delivery feature lets you offer delivery to customers within a specific radius or postal code area. When you enable "Run rates through Shopify" in Bird App, it will use your Shopify local delivery settings instead of app-configured rates.

## Configure Shopify Local Delivery

### Step 1: Access Local Delivery Settings

1. Go to **Shopify Settings** → **Shipping & Delivery**
2. Scroll down to the **Local Delivery** section
3. Click on the highlighted button

![Shopify admin shipping settings page showing Local Delivery section highlighted in the navigation](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-17-at-62558_1vkme7q.png)  <!-- =700x456 -->

### Step 2: Enable Local Delivery

1. Click next to the location you want to edit
2. Toggle **Local delivery** to **Enabled**
3. Choose your delivery area method:
   - **Radius:** Set distance from your store (e.g., 10km)
   - **Postal codes:** Enter specific ZIP/postal codes

![Shows the local delivery configuration interface with rate configured based on postal code](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-17-at-63258_hn7oc9.png)  <!-- =700x328 -->

### Step 3: Set Delivery Pricing

1. Configure your delivery pricing:
   - **Free delivery** for orders above a certain amount
   - **Fixed delivery fee** for all orders
   - **Conditional pricing** (e.g., $5 for orders $20-50, free for orders $50+)
2. Click **Save** to apply your settings

![Shows the delivery rate configuration with minimum order value and delivery charge fields](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-06-at-12445_1gf5ly7.png)  <!-- =600x352 -->

**That's it!** Your Shopify local delivery is now configured.

## Connect Bird App to Use Shopify Local Delivery

**This step ensures Bird App uses your Shopify local delivery settings instead of app rates.**

1. Go to **Bird App** → **Rates**
2. Scroll to **Local Delivery** section
3. Enable **"Run local delivery rates through Shopify"**
4. Save your settings

Bird App will now use your Shopify local delivery settings for all local delivery orders, ensuring consistent pricing across your store. Please note, if you have not completed the Bird Rates set up wizard, your Shopify rates will be used by default.

## Shopify Local Delivery Restrictions:
- **No Date/Time Selection:** Shopify local delivery doesn't support specific delivery dates or time slots
- **No Advanced Rules:** Cannot set different rates for different days or times
- **Separate from Shipping:** Cannot combine with shipping zone rates for the same area
- **Customer Choice:** If an address qualifies for both local delivery and shipping, customers must choose one

**For Advanced Features:** Use Bird App's rate configuration for time-based pricing, delivery date selection, and complex rate rules. You can [configure rates directly in Bird App instead of Shopify](https://help.birdchime.com/en-us/article/rates-control-jjcrrp/).

## Related Articles

- [Configure Shipping Rates](https://help.birdchime.com/en-us/article/configure-shipping-rates-llsy16/)
- [Configure Local Delivery Rates Based on Postal Code](https://help.birdchime.com/en-us/article/configure-local-delivery-rates-based-on-postal-code-16da0ew/)
- [How to place a test order](https://help.birdchime.com/en-us/article/place-a-test-order-to-verify-bird-app-widget-13fhz0a/)
