---
id: d92647fa-a9a4-4a4a-ba2a-be2577d9d525
title: "Integrating Bird App Widget in Your Shopify Headless Theme"
category: integrations
section: general
slug: integrating-bird-app-widget-in-your-shopify-headless-theme
crisp_updated_at: 1741922929000
crisp_url: https://help.birdchime.com/en-us/article/integrating-bird-app-widget-in-your-shopify-headless-theme-2vb8hr/
---

# Follow the below steps to integrate the widget into the headless theme 

1. **Bird App** must be **installed and enabled** in your Shopify Admin.
2. **Insert HTML div element **in your theme, where our widget will be loaded.
 
```
<div id='birdchime-slots-box'></div>
```
 
3. Set **Global Shopify variable** as
 
```
window.Shopify = { shop: 'your-shopify-domain.myshopify.com' }
```

4. Add the **Bird App CDN Script** to your theme:
 
```
https://cdn.birdchime.com/script.js?v=0.4
```

5. **Implement ** `/cart.js` route
In a **headless Shopify setup**, `/cart.js` is not available by default. You need to create an API route that mimics Shopify’s native cart behavior so the Bird App Widget can fetch cart data.

**How to Implement /cart.js in a Headless Theme?**

1️⃣ **Create an API route** in your backend (e.g., Next.js, Express, or any backend framework).  
2️⃣ **Fetch cart details** using the **Shopify Storefront API**.  
3️⃣ **Return the cart data** in the same JSON format as Shopify’s `/cart.js`.

**Here's the sample json-data that appears on /cart.js in usual Shopify themes:**

```
{  
"token": "Z2NwLXVzLWNlbnRyYWwxOjAxSlA4NVFYRkUxTUpBUU1ZTVZSNUNSRlhR?key=a4e647c59e307f4511afc01225902a03",
  "note": "",
  "attributes": {
    "Delivery Method": "Delivery",
    "Customer TimeZone": "Asia/Calcutta"
  },
  "original_total_price": 62995,
  "total_price": 62995,
  "total_discount": 0,
  "total_weight": 0,
  "item_count": 1,
  "items": [
    {
      "id": 49629325197634,
      "properties": {},
      "quantity": 1,
      "variant_id": 49629325197634,
      "key": "49629325197634:23076a9455715f4e7ce2a57efbafee87",
      "title": "The Multi-managed Snowboard",
      "price": 62995,
      "original_price": 62995,
      "presentment_price": 629.95,
      "discounted_price": 62995,
      "line_price": 62995,
      "original_line_price": 62995,
      "total_discount": 0,
      "discounts": [],
      "sku": "sku-managed-1",
      "grams": 0,
      "vendor": "Multi-managed Vendor",
      "taxable": true,
      "product_id": 9684816101698,
      "product_has_only_default_variant": true,
      "gift_card": false,
      "final_price": 62995,
      "final_line_price": 62995,
      "url": "/products/the-multi-managed-snowboard?variant=49629325197634",
      "featured_image": {
        "aspect_ratio": 1,
        "alt": "Top and bottom view of a snowboard. The top view shows an illustration with varied outlined shapes\n          in black. The bottom view shows a black box character with an H pointing, and surrounded by black outlined\n          illustrative elements.",
        "height": 1600,
        "url": "https://cdn.shopify.com/s/files/1/0892/9820/7042/files/Main_9129b69a-0c7b-4f66-b6cf-c4222f18028a.jpg?v=1723863210",
        "width": 1600
      },
      "image": "https://cdn.shopify.com/s/files/1/0892/9820/7042/files/Main_9129b69a-0c7b-4f66-b6cf-c4222f18028a.jpg?v=1723863210",
      "handle": "the-multi-managed-snowboard",
      "requires_shipping": true,
      "product_type": "snowboard",
      "product_title": "The Multi-managed Snowboard",
      "product_description": null,
      "variant_title": null,
      "variant_options": [
        "Default Title"
      ],
      "options_with_values": [
        {
          "name": "Title",
          "value": "Default Title"
        }
      ],
      "line_level_discount_allocations": [],
      "line_level_total_discount": 0,
      "quantity_rule": {
        "min": 1,
        "max": null,
        "increment": 1
      },
      "has_components": false
    }
  ],
  "requires_shipping": true,
  "currency": "INR",
  "items_subtotal_price": 62995,
  "cart_level_discount_applications": []
}
```
