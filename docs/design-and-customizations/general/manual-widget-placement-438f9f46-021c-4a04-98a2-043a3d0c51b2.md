---
id: 438f9f46-021c-4a04-98a2-043a3d0c51b2
title: "How to Manually Position Your Pickup & Delivery Widget"
category: design-and-customizations
section: general
slug: manual-widget-placement
crisp_updated_at: 1737568028000
crisp_url: https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/
description: "Learn how to manually position the Bird Pickup & Delivery widget on your cart page using CSS selectors when automatic placement doesn't work for your theme"
---


**You'll move the Bird Pickup & Delivery widget to the perfect location on your cart page when automatic placement doesn't work.**

Widget placement controls where customers see your delivery date picker. Use manual placement when automatic positioning fails or when you need precise control.

**Requirements:** Use Chrome browser for these exact steps. Other browsers have different developer tools interfaces.

## Find Your Target Element

1. **Open your cart page** in a new browser tab
2. **Right-click the element** where you want the widget positioned
   - Common locations: cart footer, below cart items, above checkout button
3. **Select "Inspect element"** from the context menu

![Shows the browser context menu with "Inspect" element option highlighted on a cart page](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1lhxlax.png)

## Copy the CSS Selector

1. **Hover over the highlighted element** in the developer tools
   - The element shows a blue highlight on your page
2. **Right-click the HTML element** in the developer panel
3. **Select "Copy" > "Copy selector"** from the menu

![Shows the developer tools context menu with highlighted element structure](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_e4n3e5.png)

## Configure Widget Placement

1. **Navigate to your Bird app** in Shopify admin
2. **Go to Settings > Widget Placement**

![Shows the Bird app navigation menu with Widget Placement option highlighted in the settings section](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/widgetplacementmenu_1uyni50.png)

3. **Paste your CSS selector** in the placement field
   - For CSS classes: Use format `.cart__footer`
   - For HTML IDs: Use format `#cart_footer`

![Shows the widget placement configuration screen with CSS selector input field](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/cssclass_bg703r.png)

## Adjust Position (Optional)

Use the **Position** dropdown to control placement:
- **After the element**: Widget appears below the target element
- **Before the element**: Widget appears above the target element
- **Inside the element as first (top)**: Widget appears inside the element at the top
- **Inside the element as last (bottom)**: Widget appears inside the element at the bottom

![Shows the position adjustment dropdown menu with different placement options for fine-tuning widget location](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-135501_98gtw.png)

## Verify Your Setup

1. **Save your changes** in the Bird app settings
2. **Visit your cart page** in a new browser tab
3. **Add items to cart** to see the widget in action

![Shows the final result with the Bird delivery date widget properly positioned in the cart footer area](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_10tdhna.png)

## Common CSS Selectors

Use these examples for popular theme structures:

- **Dawn theme cart footer**: `.cart__footer`
- **Debut theme cart section**: `#cart-section`
- **Brooklyn theme cart actions**: `.cart__btn-wrapper`
- **Minimal theme checkout area**: `.cart-form__actions`

Need help? Contact our support team with your store URL and desired widget location.