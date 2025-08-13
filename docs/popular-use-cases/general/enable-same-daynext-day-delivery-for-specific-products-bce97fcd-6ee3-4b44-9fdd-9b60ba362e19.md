---
id: bce97fcd-6ee3-4b44-9fdd-9b60ba362e19
title: "How to Configure Expedited Delivery (Same-Day & Next-Day) for Specific Products"
category: popular-use-cases
section: general
slug: enable-same-daynext-day-delivery-for-specific-products
crisp_updated_at: 1737999965000
crisp_url: https://help.birdchime.com/en-us/article/enable-same-daynext-day-delivery-for-specific-products-hfb1hm/
description: "Learn how to configure different delivery schedules for specific products using Bird Pickup & Delivery's product override feature"
---

## How to Configure Expedited Delivery (Same-Day & Next-Day) for Specific Products

**Configure different delivery schedules for specific products in your catalog using product overrides and tags.**

Our app allows you to set up flexible delivery schedules across your product catalog. For example, you can offer same-day delivery for most products while requiring next-day delivery for specific items that need more preparation time.

## Set up same-day delivery for all products

1. Go to **Pickup & Delivery** / **Configure Locations** based on your location schedule
2. Select a **Basic Setting** and scroll to **Preparation Times**
3. Set lead time to **0 days** for same-day delivery
4. Configure your cut-off time based on when you can deliver on the same day
5. Save your settings

Your store now offers same-day delivery for all products by default.

[Screenshot: Showing the settings for same-day delivery global setup]

## Configure next-day delivery for specific products

Use product overrides to set different delivery schedules for specific products:

1. Go to **Product Overrides** 
2. Create a new override rule
3. Set lead time to **1 day** for next-day delivery
4. Use product tags to identify which products need next-day delivery
5. Save your override settings

![Product override configuration screen showing lead time settings and tag-based product selection for next-day delivery](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-213428_jresmj.png)

1. Go to your **Shopify Admin** > **Products**
2. Select products that need next-day delivery
3. Add a tag like "next-day-delivery" to these products
4. Save your changes

For bulk tag management, see our guide on [bulk adding tags to products](https://help.birdchime.com/en-us/article/bulk-add-tags-to-products-12xc905/).

## Alternative: Next-day delivery as default

If most of your products require next-day delivery:

1. Set your global lead time to **1 day** in order preparation settings
2. Create a product override with **0 days** lead time
3. Use tags to identify products eligible for same-day delivery
4. Apply these tags to products that can be delivered same-day

This approach ensures next-day delivery for most products while allowing same-day delivery for specific items.

## FAQs

##### Can I set different delivery schedules for different product categories?
Yes, use product tags to group products by category and create separate override rules for each category.

##### How do I know which products are set for next-day delivery?
Check your product override settings and look for products with the tags you've configured for next-day delivery.

##### Can I change delivery schedules after orders are placed?
At the moment, delivery schedules are locked once an order is placed, so please configure your settings beforehand. We are developing a feature to allow for these adjustments in the future.

##### What if I need more than two delivery schedule options?
Create multiple product overrides with different lead times and use specific tags for each schedule.

For more general questions, see our main [FAQs page](https://help.birdchime.com/en-us/category/faqs-1ygmxau/).

## Related articles

- [Configure order preparation times](https://help.birdchime.com/en-us/article/configure-order-preparation-times-1b43s8n/)
- [Product override settings](https://help.birdchime.com/en-us/article/product-override-g2yfl9/)
- [Configure availability settings](https://help.birdchime.com/en-us/article/configure-availability-settings-37da5caa-d6ec-4ad5-ac39-36c815daf55c/)
