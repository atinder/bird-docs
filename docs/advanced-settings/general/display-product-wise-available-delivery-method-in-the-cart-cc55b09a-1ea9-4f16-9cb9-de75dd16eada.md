---
id: cc55b09a-1ea9-4f16-9cb9-de75dd16eada
title: "Display Product-Wise Available Delivery Methods in Cart"
category: advanced-settings
section: general
slug: display-product-wise-available-delivery-method-in-the-cart
crisp_updated_at: 1730790125000
crisp_url: https://help.birdchime.com/en-us/article/display-product-wise-available-delivery-method-in-the-cart-h7rzfe/
description: "Learn how to show available delivery methods for each product directly in your cart to improve customer experience and reduce checkout confusion."
---

**You'll display available delivery methods for each product in your cart, helping customers make informed decisions before checkout.**

This feature shows customers which delivery options are available for each product, reducing support questions and improving the shopping experience.

## What You'll Accomplish

Your cart will display delivery method indicators like "Pickup Available" or "Local Delivery Available" next to each product, based on the product tags you've configured.

![Cart page showing delivery method indicators next to product](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/imagejvlw0q_8rmra4.png)

## Setup Process

### Step 1: Add Delivery Method Tags to Products

1. Navigate to **Products** in your Shopify admin
2. Open the product you want to configure
3. Add delivery method tags in the **Tags** field:
   - `pick up` for pickup availability
   - `local delivery` for local delivery availability  
   - `Courier` for shipping availability

![Product edit page showing tags field with delivery method tags entered](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-03-09-at-85809_1ces4vj.png)

### Step 2: Access Theme Customizer

1. Go to **Online Store** → **Themes**
2. Click **•••** on your active theme
3. Click **Edit code** in the menu that pops up

![Theme customizer interface showing ••• button](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-02-10-at-10417_1hkruva.png)

### Step 3: Locate Cart Template

1. The theme editor window will open
2. Use the **Search files** box to find your cart template
3. Look for files named:
   - `cart.liquid`
   - `cart.js`
   - `cart-template.liquid`
   - `cart.liquid.js`

![Theme editor window showing file structure and search functionality](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-02-10-at-11648_yjl28j.png)

![Search results showing cart template files available for editing.](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-02-14-at-11511_cqyeth.png)

### Step 4: Add Delivery Method Code

1. Click on your cart template file
2. Find the cart details section (varies by theme)
3. Add this code snippet **before** the checkout section or cart totals
4. Click **Save** to apply your changes

**Need help?** [Contact our support team](https://go.crisp.chat/chat/embed/?website_id=9a669714-af96-4a70-bf92-ea0b2ade5ab0) for assistance with theme-specific placement.

```liquid
{% if item.product.tags contains "pick up" %}
         <p style="color:green"><strong>Pickup Available</strong></p>
{% endif %}
{% if item.product.tags contains "local delivery" %}
         <p style="color:green"><strong>Local Delivery Available</strong></p>
{% endif %}
{% if item.product.tags contains "Courier" %}
         <p style="color:green"><strong>Shipping Available</strong></p>
{% endif %}
```

![Code editor showing the delivery method snippet added to the cart template](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-03-09-at-11513_cq0gn0.png)

**That's it!** Your cart will now display available delivery methods for each product based on their tags.

## How It Works

The code checks each product's tags and displays the appropriate delivery method indicator:
- Products tagged with `pick up` show "Pickup Available"
- Products tagged with `local delivery` show "Local Delivery Available"  
- Products tagged with `Courier` show "Shipping Available"

## Customization Options

You can modify the display by:
- Changing the text labels in the code
- Adjusting the color by modifying `color:green`
- Adding additional delivery method tags as needed

## FAQs

##### Can I use different tag names?
Yes, you can modify the tag names in the code to match your existing product tags. Just update the `contains` values in the liquid code.

##### Will this affect my existing cart functionality?
No, this code only adds display elements and doesn't interfere with your cart's core functionality or Bird Pickup & Delivery app features.

##### Can I show multiple delivery methods for one product?
Yes, if a product has multiple delivery method tags, all applicable indicators will display.

##### What if I want to change the styling?
You can modify the inline CSS in the `<p>` tags or add custom CSS classes to your theme for more advanced styling.

For more general questions, see our main [FAQs page](https://help.birdchime.com/en-us/category/faqs-1ygmxau/).

## Related Articles

- [Change Cart Type](https://help.birdchime.com/en-us/article/change-cart-type-1g2elmy/) - Configure the app for cart page use and customize display options
- [How to Customize the Widget Look](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/) - Style your delivery widget appearance
- [Manual Widget Placement](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/) - Place the widget exactly where you want it
