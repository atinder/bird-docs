---
id: 681248a7-c341-4a23-95da-eedde3cb909f
title: "How to Hide Express Checkout Buttons from Cart Using CSS"
category: design-and-customizations
section: general
slug: how-to-hide-express-checkout-options-from-cart
crisp_updated_at: 1737567892000
crisp_url: https://help.birdchime.com/en-us/article/how-to-hide-express-checkout-options-from-cart-aj6pyf/
description: "Step-by-step guide to hide Shopify express checkout buttons from your cart page using CSS. Ensures customers complete full checkout flow with Bird Pickup & Delivery date/time selection."
---

**Hide express checkout buttons to ensure customers complete the full checkout flow with date and time selection.**

Express checkout options can bypass your Bird App date and time selection. This results in orders without delivery scheduling. This guide shows you how to hide these buttons from your cart page.

## How to Hide Express Checkout Options

Follow these steps to remove express checkout buttons from your cart page:

### Step 1: Locate Express Checkout Buttons

Open your cart page and identify the express checkout buttons.

![Cart page showing express checkout buttons that need to be hidden](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_179y7oy.png)

### Step 2: Inspect the Page Elements

Right-click on the express checkout buttons and select **Inspect** from the context menu.

[Placeholder Screenshot: Right-click context menu with Inspect option highlighted.]

### Step 3: Find the Element Class or ID

In the developer tools, locate the express checkout button elements. Look for classes or IDs containing words like "dynamic" or "checkout".

![Developer tools showing the HTML structure with dynamic checkout button elements highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_12voec.png)

### Step 4: Access Bird App Widget Design Settings

Navigate to **Bird App Settings > Widget Design** in your Shopify admin.

![Bird App settings page showing the Widget Design section](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/widget-design_u4wlje.png)

### Step 5: Add CSS to Hide Express Checkout

Scroll to the **Advanced Styling** section and add CSS code to hide the express checkout buttons.

**For Class-based elements:**

```css
.dynamic-checkout__content {
    display: none !important;
}
```

**For ID-based elements:**

```css
#dynamic-checkout-cart {
    display: none !important;
}
```

**Note:** The `!important` declaration overrides theme styles. **Replace the selectors with the actual values from your store's inspection.**

![Advanced styling section showing the CSS code added to hide express checkout buttons](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-133030_13kcqas.png)

### Step 6: Verify the Changes

Save your settings and refresh your cart page. The express checkout options should now be hidden.

![Cart page with express checkout buttons successfully hidden, showing only the standard checkout flow](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_nmnqp3.png)

## Troubleshooting

**If the CSS doesn't work:**

1. **Check for typos** in your CSS selectors
2. **Use browser developer tools** to verify the correct class/ID names
3. **Clear browser cache** and refresh the page

**Alternative solutions if CSS fails:**

- **Theme Settings:** Some themes have built-in options to disable express checkout
- **App Conflicts:** Check if other apps are forcing express checkout to display

## Related Articles

- [How to Enable the App in Your Theme](https://help.birdchime.com/en-us/article/how-to-enable-bird-pickup-and-delivery-date-widget-in-your-shopify-theme-450cbp/)
- [Widget Design Customization](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
