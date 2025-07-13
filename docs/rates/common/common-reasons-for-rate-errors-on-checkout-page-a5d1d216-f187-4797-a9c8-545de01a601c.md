---
id: a5d1d216-f187-4797-a9c8-545de01a601c
title: "How to Fix Rate Errors on Checkout Page - Complete Troubleshooting Guide"
category: rates
section: common
slug: common-reasons-for-rate-errors-on-checkout-page
crisp_updated_at: 1747737073000
crisp_url: https://help.birdchime.com/en-us/article/common-reasons-for-rate-errors-on-checkout-page-1iekz2h/
description: "Learn how to resolve common rate errors that prevent customers from completing checkout with Bird Pickup & Delivery"
---

**You'll learn how to identify and fix the most common rate errors that block customers from completing checkout.**

![Checkout error message indicating that no shipping methods are available for the customer's address](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1mqhgsj.png)

## Quick Navigation

- [General Rate Issues](#general-rate-issues)
- [Local Delivery Rate Issues](#local-delivery-rate-issues)
- [Store Pickup Rate Issues](#store-pickup-rate-issues)
- [Shipping Rate Issues](#shipping-rate-issues)

## General Rate Issues

### Location Not Enabled in Product Inventory

**Problem:** Products aren't available at specific locations.

![Shows product inventory settings with one location not enabled for the product](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-07-at-10565_1sqpjr4.png)

**Solution:**
1. Go to **Shopify Admin → Products**
2. Select your product
3. Navigate to **Inventory**
4. Click **Edit Locations**
5. Enable the required locations

**That's it!** Your product will now be available at all enabled locations.

### Product Out of Stock at Location

**Problem:** Customers can't order because inventory is depleted.

![Shows inventory with zero stock at a specific location](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1iqowmq.png)

**Solution:** Add stock to the depleted location in your inventory management.

### Location Not Enabled for Online Orders

**Problem:** Locations exist but can't fulfill online orders.

![Location settings with the option to enable online order fulfillment](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-08-at-12372_13ghji7.png)

**Solution:** Enable "Fulfill online orders" for each location in your Shopify settings.

### Invalid Store Location Address

**Problem:** Shopify can't validate your store's physical address.

![Location settings with an invalid address that needs correction](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-07-at-11034_1rmr5e2.png)

**Solution:** Enter a complete, valid address in your Shopify location settings.

### Third-Party App Conflicts

**Problem:** Other apps interfere with your delivery rates.

![Shopify's delivery customization settings where conflicting apps can be managed](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_60fi43.png)

**Solution:** Check **Shopify Admin → Settings → Shipping & Delivery → Delivery Customization** for conflicting apps.

## Local Delivery Rate Issues

### Customer Address Outside Delivery Zone

**Problem:** Customer's postal code or address falls outside your delivery radius.

![Delivery rate configuration with postal codes that don't cover the customer's area](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_pnpdwc.png)

![Delivery radius settings that may not cover the customer's location](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1j2nhg2.png)

**Solution:** Expand your delivery zones or add the customer's postal code to your delivery areas.

### Cart Below Minimum Order Value

**Problem:** Customer's cart total doesn't meet your minimum order requirement.

![Shows minimum order value settings that may be preventing checkout completion](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1dkdp8b.png)

**Solution:** Lower your minimum order value or guide customers to add more items.

## Store Pickup Rate Issues

### Location Not Enabled for Pickup

**Problem:** Store locations exist but aren't configured for customer pickup.

![Shows location settings where pickup options are not enabled](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-08-at-12355_21gzfr.png)

**Solution:** Enable pickup options for each location in your Bird Pickup & Delivery settings.

### No Pickup Locations Available

**Problem:** All locations are missing required address information.

![Error indicating no pickup locations are available due to missing address information](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_kus95a.png)

**Solution:**
1. Go to **Shopify Admin → Settings → Locations**
2. Select each location
3. Add complete street address
4. Save the location

**That's it!** Your locations will now be available for pickup orders.

## Shipping Rate Issues

### Bird App Rate Rules Not Met

**Problem:** Customer's cart conditions doesn't match your configured delivery rates.

![Rate configuration where customer address doesn't meet the set conditions](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_145ykz6.png)

**Solution:** Review and adjust your delivery rate rules in the Bird Pickup & Delivery app.

### Shopify Admin Shipping Rules Not Met

**Problem:** Customer's order value falls outside your Shopify delivery rates.

![Shows Shopify shipping rate configuration that may not cover customer's cart value](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_14ituua.png)

**Solution:** Update your shipping zones in **Shopify Admin → Settings → Shipping & Delivery**.

## FAQs

##### Why do I see "no shipping methods available" errors?
This usually means your product inventory, location settings, or delivery zones need configuration. Check the general rate issues section above.

##### How do I know if my location address is valid?
Shopify will show a validation error if the address is incomplete or invalid. Add a complete street address to resolve this.

##### Can I have different delivery zones for different products?
Yes, Bird Pickup & Delivery allows you to configure product-specific delivery rules and availability.

##### What should I do if third-party apps conflict with my rates?
Check your Shopify delivery customization settings and temporarily disable conflicting apps to test.

For more general questions, see our main [FAQs page](https://help.birdchime.com/en-us/category/faqs-1ygmxau/).

## Related Articles

- [Rates Control](https://help.birdchime.com/en-us/article/rates-control-jjcrrp/)
- [Configure Delivery Rates](https://help.birdchime.com/en-us/article/configure-delivery-rates-1xbrder/)
- [Configure Pickup Rates](https://help.birdchime.com/en-us/article/configure-pickup-rates-1n7gumb/)
- [How to Enable Bird Pickup and Delivery Date Widget in Your Shopify Theme](https://help.birdchime.com/en-us/article/how-to-enable-bird-pickup-and-delivery-date-widget-in-your-shopify-theme-450cbp/)
