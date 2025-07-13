---
id: dc8a2089-1dde-40f9-9f07-d0e0d80555ab
title: "Bird App Variables"
category: uncategorized
section: general
slug: bird-app-variables
crisp_updated_at: 1748355340000
crisp_url: 
description: ""
---

Use the following Liquid variables to display scheduled pickup, delivery, and shipping data in your Shopify email notifications. These variables pull from customer selections made via the Bird Pickup and Delivery widget.

| **Variable** | **Description** |
| ---- |
| **Slot & Method** |  |
| Bird_Method | Fulfillment method selected by customer: Delivery, Pick Up, or Shipping. |
| Bird_Date | Scheduled date for the slot. *(Use Liquid filters to format, e.g.&#32;* `{{ Bird_Date | date: "%Y-%m-%d" }}` |
| Bird_Time | Time slot selected for the order |
| Bird_Day | Day-of-week for Bird_Date, e.g. Tuesday. |
| Bird_Location_Id | Internal ID of the pickup location (useful for custom logic). ** |
| **Pickup Location Details** |  |
| ${color}[#8b2727]( BIRD_LOCATION ) | Name of the store location chosen for pickup (only when Bird_Method == "Pick Up"). |
| location.name | Store location name (same as BIRD_LOCATION). |
| location.address1 | Store address line 1. |
| location.address2 | Store address line 2 (if any). |
| location.city | Store city |
| location.province | Store the province or state. |
| location.zip | Store ZIP/postal code. |
| location.country | Store country. |
| **Customer-Entered Instructions** |  |
| delivery_instructions | “Delivery instructions” field entered by customer on checkout (only when Bird_Method == "Delivery"). |
| pickup_instructions | “Pickup instructions” field entered by customer on checkout (only when Bird_Method == "Pick Up"). |
| **Order Attributes (fallbacks)** |  |
| attributes['Delivery Method'] | Same as Bird_Method. |
| attributes['Delivery Date'] | Same as Bird_Date. |
| attributes['Delivery Time'] | Same as Bird_Time. |
| attributes['Delivery Location'] | Same as BIRD_LOCATION. |
| attributes['Translated Delivery Time'] | If enabled in Bird settings, a localized/time-zone-adjusted slot string (overrides Bird_Time). |
| order_name | Order name (e.g., #1234). |
| customer.first_name | Customer’s first name. |
| customer.last_name | Customer’s last name. |
| total_price | Total order price. |
| line_items | List of all products in the order. Used in `{% raw %}{% for line in line_items %}{% endraw %}` loops. |
| note | Order note, if the customer left one. |
| shipping_address.* | Components of the shipping address: `address1`, `address2`, `city`, `province`, `zip`, `country`. |
| shop.email | Store’s contact email. |
| shop.url |  |
 Store’s homepage URL.
 |
| order_status_url | Link for customer to view order status.
 |
