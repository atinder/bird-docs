---
id: 458150ec-264c-4881-a2bd-514c8c563cc5
title: "Add Date and Time to Packaging Slips and Invoices"
category: notifications-and-validations
section: general
slug: add-datetime-in-packaging-slip-or-invoice
crisp_updated_at: 1740215624000
crisp_url: https://help.birdchime.com/en-us/article/add-datetime-in-packaging-slip-or-invoice-m9smdk/
description: "Add Date and Time to packaging slip"
---

**Learn to display delivery date and time on packaging slips for better tracking.**

## Quick Setup Method

**Enable date/time display on packaging slips in three simple steps.**

### Step 1: Access Order Management Settings

Navigate to **Bird App Settings > Order Management**.

![Shows the Bird App Settings navigation menu with Order Management highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-11441_1gz7zgy.png)

### Step 2: Enable Order Notes

Scroll to **Order notes and fulfillment** section. Enable the **"Append date/time to order note"** option to add date/time information to order notes:

![Shows the Order notes and fulfillment settings with toggle options for adding date/time to order note](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12012_16buo4o.png)
![Demonstrating how enabled append date/time to order note setting looks in order note](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-04-12-at-12425_es9psn.png)

### Step 3: Format Display (Optional)

For better formatting, navigate to **Bird App Settings > Notifications > Customer notifications > Edit packaging slip**.

![Shows the packaging slip editing option under Customer Notifications section in Notifications setting](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-223454_1qz7eny.png)

Replace the existing code:

```html
<p class="notes-details">
   {{ order.note }}
</p>
```

With this improved formatting:

```html
{% assign note_array = order.note | split: " | " %}
{% for note_item in note_array %}
   <p class="notes-details">{{ note_item }}</p>
{% endfor %}
```

![Shows the highlighted code that is to be replaced in the packaging slip code editor](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-04-12-at-12555_1aqcc6.png)

**That's it!** Your packaging slips will now display the delivery date and time information clearly.

## Translate Date/Time Labels (Optional)

**Customize the display language for your packaging slips.**

Replace the formatting code from Step 3 with this translation-ready version:

```html
{% assign note_array = order.note | split: " | " %}
{% for note_item in note_array %}
   {% assign translated_item = note_item %}
   {% if note_item contains "Delivery Method" %}
      {% assign translated_item = note_item | replace: "Delivery Method", "Bezordmethode" %}
   {% endif %}
   {% if note_item contains "Delivery Date" %}
      {% assign translated_item = note_item | replace: "Delivery Date", "Bezorgdatum" %}
   {% endif %}
   {% if note_item contains "Delivery Time" %}
      {% assign translated_item = note_item | replace: "Delivery Time", "Aflevertijd" %}
   {% endif %}
   {% if note_item contains "Delivery Location" %}
      {% assign translated_item = note_item | replace: "Delivery Location", "bezorglocatie" %}
   {% endif %}
   <p class="notes-details">{{ translated_item }}</p>
{% endfor %}
```

**Important:** Replace the Dutch translations above with your preferred language terms. For example, for Spanish: "Método de entrega," "Fecha de entrega," "Hora de entrega," "Ubicación de entrega."

![Shows the translation code example with custom language terms](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/untitled_1vv51yf.png)

Your translated packaging slip will display like this in the case above:

![Shows the final translated packaging slip with Dutch language labels](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_i8g9ar.png)

## Advanced Method with Order Printer Pro

**Use Order Printer Pro app for enhanced customization options and professional layout.**

This method requires the [Order Printer Pro app](https://apps.shopify.com/order-printer-pro) and creates a more professional, layout for your delivery information.

Add this code snippet to your packaging slip template:

```html
{% if attributes["Delivery Date"] %}
   <div style="border: 1px solid black; padding: 1.5em; margin: 0 0 1.5em 0;">
      <p>Date: {{ attributes["Delivery Date"] }}</p>
      {% if attributes["Delivery Time"] %}
         <p>Time: {{ attributes["Delivery Time"] }}</p>
      {% endif %}
      {% if attributes["Delivery Method"] %}
         <p>Delivery Method: {{ attributes["Delivery Method"] }}</p>
      {% endif %}
   </div>
{% endif %}
```

![Shows the final packaging slip with Bird App delivery details displayed in the highlighted section](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image-45_wy4ojt.png)

## Related Articles

- [Enable order confirmation email with slot date and time](https://help.birdchime.com/en-us/article/enable-order-confirmation-email-with-slot-date-and-time-iju71t/)
- [Add datetime to draft order invoice](https://help.birdchime.com/en-us/article/add-datetime-to-draft-order-invoice-pmdpbi/)
- [Set up email branding for professional customer emails](https://help.birdchime.com/en-us/article/set-up-email-branding-for-professional-customer-emails-10v7eid/)
