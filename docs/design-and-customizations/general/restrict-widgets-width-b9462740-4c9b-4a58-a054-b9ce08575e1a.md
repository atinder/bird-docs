---
id: b9462740-4c9b-4a58-a054-b9ce08575e1a
title: "How to Control Widget Width with CSS"
category: design-and-customizations
section: general
slug: restrict-widgets-width
crisp_updated_at: 1736238593000
crisp_url: https://help.birdchime.com/en-us/article/restrict-widgets-width-1ph2q97/
description: "Step-by-step guide to restrict and customize your Bird Pickup & Delivery widget width using CSS for better cart page layout and design control."
---

**Control your widget's width to create a perfectly balanced cart page layout.**

The Bird Pickup & Delivery widget automatically adapts to your theme's design, but sometimes you need precise control over its dimensions. This guide shows you how to restrict the widget's width using custom CSS.

## How to Restrict Widget Width

### Step 1: Access Advanced Styling

1. Go to your **Shopify Admin**
2. Navigate to **Apps > Bird Pickup & Delivery**
3. Click **Widget Design**
4. Scroll to **Advanced Styling**

### Step 2: Add Custom CSS

In the Advanced Styling section, add this CSS code:

```css
#birdchime-slots-box { 
    max-width: 400px; 
}
```

**Customize the width value (400px) to match your design needs.**

### Step 3: Save and Test

1. Click **Save Changes**
2. Refresh your cart page to see the updated widget width
3. Test on mobile and desktop to ensure the widget displays correctly

## Mobile-Responsive Width Control

For better mobile experience, use responsive CSS:

```css
#birdchime-slots-box { 
    max-width: 400px;
    min-width: 300px;
    width: 100%;
}
```

**Customize the width values to match your design needs.**

## Related Articles

- [How to Customize the Widget Look](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
- [Manual Widget Placement](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/)
- [Widget Design Best Practices](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)