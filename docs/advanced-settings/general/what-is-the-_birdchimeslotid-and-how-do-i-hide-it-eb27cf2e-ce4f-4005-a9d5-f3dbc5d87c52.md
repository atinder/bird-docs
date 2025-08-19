---
id: eb27cf2e-ce4f-4005-a9d5-f3dbc5d87c52
title: "What Is _BirdChimeSlotId and How to Hide it"
category: advanced-settings
section: general
slug: what-is-the-_birdchimeslotid-and-how-do-i-hide-it
crisp_updated_at: 1730790111000
crisp_url: https://help.birdchime.com/en-us/article/what-is-the-birdchimeslotid-and-how-do-i-hide-it-jghlmi/
description: "Learn what _BirdChimeSlotId is, test for visibility, hide from cart pages using 4 code options, and remove from orders. Includes Liquid code examples for all Shopify themes."
---

**The _BirdChimeSlotId stores customer selections from your Bird Pickup & Delivery widget.**

This private line item property appears when you use our Rates functionality. It determines which delivery rates to display during Shopify checkout.

The _BirdChimeSlotId contains four key pieces of information:

- **M=P**: Method (P=pickup, D=delivery, S=shipping)
- **L=1**: Location ID
- **D=2023-08-08**: Selected delivery date
- **T=9:00 AM - 6:00 PM**: Selected time slot

![Shows the _BirdChimeSlotId line item property along with values](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-01-at-40419_jp881w.png)

## Test if _BirdChimeSlotId appears on your cart page

**Follow these steps to check if _BirdChimeSlotId is visible to customers:**

1. Add a product to your cart
2. Navigate to the cart page
3. Select delivery details in the Bird widget
4. Proceed to checkout
5. Return to the cart page

Check both your main cart page and drawer cart if applicable.

![Shows the cart page with _BirdChimeSlotId visible as a line item property that needs to be hidden](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-02-at-10484_rrshg9.png)

**If you see _BirdChimeSlotId, you need to hide it. If not visible, no action required.**


## Hide _BirdChimeSlotId from your cart page

**We automatically hide _BirdChimeSlotId, but some themes require manual configuration.**

**Note:** Contact our support team for assistance. Only proceed if you're comfortable editing code.

### Option 1: Using `unless` statements

#### Option 1a: Standard Liquid syntax
Find this code in your cart file (cart.liquid, cart-template.liquid, main-cart.liquid):

```liquid
{% unless p.last == blank %}
```

Replace with:

```liquid
{% unless p.last == blank or p.first == '_BirdChimeSlotId' %}
```

#### Option 1b: Whitespace control syntax
Find this code:

```liquid
{%- unless p.last == blank -%}
```

Replace with:

```liquid
{%- unless p.last == blank or p.first == '_BirdChimeSlotId' -%}
```

### Option 2: Using `if` statements

Find this code:

```liquid
{% if p.last != blank %}
```

Replace with:

```liquid
{% if p.last != blank and p.first != "_BirdChimeSlotId" %}
```

### Option 3: Using `property` variables

Find this code:

```liquid
{% unless property.last == blank %}
```

Replace with:

```liquid
{% unless property.last == blank or property.first == '_BirdChimeSlotId' %}
```

## Option 4: Remove entire property display

Find this code in cart-ajax-template.liquid or cart-notification.liquid:

```liquid
<span class="ajaxcart__product-meta">{{@key}}: {{this}}</span>
```

**Remove this line completely.**

### Append to existing conditions

If your code already has additional conditions, append one of these:

```liquid
or p.first == "_BirdChimeSlotId"
```

```liquid
and p.first != "_BirdChimeSlotId"
```

```liquid
or property.first == '_BirdChimeSlotId'
```

**That's it!** The _BirdChimeSlotId will no longer appear on your cart page.

## Remove _BirdChimeSlotId from orders

**Shopify API restrictions prevent automatic removal from orders.**

You can manually remove it by hovering over the _BirdChimeSlotId and clicking the Delete button.

![Shows the order details with _BirdChimeSlotId visible and a delete button that appears on hover](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-01-at-10121_1ivf5xd.png)

## Related Articles

- [Attach Delivery Date In Order Metafield using Shopify Flow](https://help.birdchime.com/en-us/article/attach-delivery-date-in-order-metafield-using-shopify-flow-14l1gfc/)
- [How to Customize the Widget Look](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
- [Manual Widget Placement](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/)
