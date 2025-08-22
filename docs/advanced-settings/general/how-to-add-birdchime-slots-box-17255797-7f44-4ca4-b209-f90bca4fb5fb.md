---
id: 17255797-7f44-4ca4-b209-f90bca4fb5fb
title: "Manually Add Birdchime Delivery Slots Box to Your Cart Page"
category: advanced-settings
section: general
slug: how-to-add-birdchime-slots-box
crisp_updated_at: 1701695698000
crisp_url: https://help.birdchime.com/en-us/article/how-to-add-birdchime-slots-box-s7gd76/
description: "Complete step-by-step guide to manually integrate the Birdchime delivery slots box into your Shopify theme's cart page. Includes theme file editing and code placement for advanced users who need full control over widget placement and styling."
---

**You'll learn how to manually integrate the Birdchime delivery slots box into your cart page for complete theme control.**

The Birdchime slots box displays available delivery and pickup time slots directly on your cart page. This manual integration gives you full control over placement and styling when automatic placement doesn't meet your needs.

## Step-by-Step Integration

**Important:** The slots box will only display delivery times if your app is fully configured with delivery zones and availability settings. If you see an empty box, check your app settings first.

### 1. Access Your Theme Files

Navigate to **Online Store** in your Shopify admin sidebar.

![Shows the Shopify admin navigation with Online Store section highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-90522_jrki48.png)

### 2. Select Your Active Theme

Click on your **active theme** and select the **...** menu option.

![Displays the theme selection interface with the three-dot menu highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-10372_2t9wl7.png)

### 3. Open Theme Editor

Click **Edit Code** to access your theme's source files.

![Shows the Edit Code button that opens the theme editor](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-10454_5hw0nl.png)

### 4. Locate Your Cart Template

Search for your cart template file. Common names include:
- `cart.liquid`
- `cart.template.liquid`
- `cart-drawer.liquid`
- `main.cart.liquid`

![Demonstrates the file search functionality in the theme editor](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-10501_vshnu7.png)

### 5. Add the Slots Box Code

Insert this HTML code above your checkout button:

```html
<div id="birdchime-slots-box"></div>
```

**Placement:** Above the checkout button for optimal user experience.

## Troubleshooting

### Slots Box Not Displaying
- **Check file location:** Ensure you're editing the correct cart template
- **Verify app status:** Confirm Bird Pickup & Delivery is active
- **Clear cache:** Refresh your store and clear browser cache

### Empty Slots Box - Check These Settings First
- **App configuration:** Verify delivery zones and availability are set up
- **Product settings:** Check if products have delivery methods enabled
- **Location settings:** Ensure your store location is configured

## Related Articles

- [Enable the App in Your Theme](https://help.birdchime.com/en-us/article/how-to-enable-bird-pickup-and-delivery-date-widget-in-your-shopify-theme-450cbp/)
- [Manual Widget Placement](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/)
- [How to Customize the Widget Look](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
