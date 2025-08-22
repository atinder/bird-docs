---
id: af4f08d0-a30b-474c-9666-9c29343e5ca2
title: "How to Add Custom Links Below Your Bird Pickup & Delivery Widget"
category: design-and-customizations
section: general
slug: how-to-show-link-below-the-widget
crisp_updated_at: 1737568245000
crisp_url: https://help.birdchime.com/en-us/article/how-to-show-link-below-the-widget-1v7vc8v/
description: "Step-by-step guide to add customer support links, contact forms, and external resources below your Bird Pickup & Delivery widget. Includes HTML code examples and customization options."
---

**Add custom links below your widget to provide customers with quick access to support, contact information, or additional resources.**

## How to Add Links Below the Widget

### Step 1: Access Design Settings

1. Go to **Bird App** > **Settings**
2. Click the **Text and Languages** option
3. Select the language you want to edit

### Step 2: Find the Widget Footer Field

1. First, choose your delivery method (Delivery, Pickup, or Shipping)
2. Look for the corresponding field:
   - **Widget footer delivery** (for local delivery orders)
   - **Widget footer pickup** (for pickup orders) 
   - **Widget footer shipping** (for shipping orders)
3. This field accepts HTML code and will display below your widget

### Step 3: Add HTML Code

Insert the following HTML code in the Footer Text field:

```html
<a href="https://help.birdchime.com">Contact Us</a>
```

### Step 4: Customize Your Link

1. **Replace the URL**: Change `https://help.birdchime.com` to your desired link URL
2. **Update the text**: Change "Contact Us" to match your link's purpose

**Example customizations:**

```html
<!-- WhatsApp Support Link -->
<a href="https://wa.me/1234567890">WhatsApp Support</a>

<!-- Email Contact Link -->
<a href="mailto:support@yourstore.com">Email Support</a>

<!-- FAQ Page Link -->
<a href="/pages/faq">View FAQ</a>
```

![Widget footer configuration area for adding custom HTML links](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/footer-text-final_1ywpi5d.png)

## Common Use Cases

- **Customer Support**: Link to live chat, help desk, or contact forms
- **Information Resources**: FAQ pages, delivery policies, or store information
- **Social Media**: WhatsApp business chat, Facebook messenger, or Instagram
- **Order Tracking**: Link to order status or tracking pages

## Related Articles

- [Customize widget appearance and styling](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
- [Place widgets manually in your theme](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/)
