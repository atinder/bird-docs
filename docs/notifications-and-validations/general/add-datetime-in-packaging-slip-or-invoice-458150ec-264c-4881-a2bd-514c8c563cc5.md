---
id: 458150ec-264c-4881-a2bd-514c8c563cc5
title: "Add Date/Time in packaging slip or invoice."
category: notifications-and-validations
section: general
slug: add-datetime-in-packaging-slip-or-invoice
crisp_updated_at: 1740215624000
---

# Add the selected date/time on the package slip or invoice and get it printed.

## Easy way- (Recommended)

1. Go to **Bird App Settings > Order Management**.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-11441_1gz7zgy.png)

2. Scroll to Order notes and fulfillment and enable the following. This will add the date/time to the order note and order note can then be printed in the packaging slip.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12012_16buo4o.png)
![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-04-12-at-12425_es9psn.png)

3. Optionally, If you want to format it, navigate to **Bird App Settings > Notifications > Customer notifications > Edit packaging slip** .

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-223454_1qz7eny.png)

Replace the following code

```html
{% raw %}
<p class="notes-details">
   {{ order.note }}
</p>
{% endraw %}
```

with

```html
{% raw %}
{% assign note_array = order.note | split: " | " %}
{% for note_item in note_array %}
   <p class="notes-details">{{ note_item }}</p>
{% endfor %}
{% endraw %}
```

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-04-12-at-12555_1aqcc6.png)

# Translate Date/Time in Invoice and packing slip (Optional)

Translate the date/time on packaging slip and get it printed.

1. Replace the code you added before following the above steps:

```html
{% raw %}
{% assign note_array = order.note | split: " | " %}

{% for note_item in note_array %}
   <p class="notes-details">{{ note_item }}</p>
{% endfor %}
{% endraw %}
```

with

```html
{% raw %}
{% assign note_array = order.note | split: " | " %}

{% for note_item in note_array %}
   {% assign translated_item = note_item %}
   {% if note_item contains "Delivery Method" %}
      {% assign translated_item = note_item | replace: "Delivery Method", "Delivery Method" %}
   {% endif %}
   {% if note_item contains "Delivery Date" %}
      {% assign translated_item = note_item | replace: "Delivery Date", "Delivery Date" %}
   {% endif %}
   {% if note_item contains "Delivery Time" %}
      {% assign translated_item = note_item | replace: "Delivery Time", "Delivery Time" %}
   {% endif %}
   {% if note_item contains "Delivery Location" %}
      {% assign translated_item = note_item | replace: "Delivery Location", "Delivery Location" %}
   {% endif %}
   <p class="notes-details">{{ translated_item }}</p>
{% endfor %}
{% endraw %}
```

| **Note:** Make sure to replace the words "Delivery Method,"  "Delivery Date,"  "Delivery Time," and "Delivery Location" as shown in the below screenshot with the translated words.

The translated code will look like this:

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/untitled_1vv51yf.png)

2. The translated fields in the packing slip will look like this (Dutch Language).

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_i8g9ar.png)

# Advanced Way - (Optional)

You will need [Order printer pro app](https://apps.shopify.com/order-printer-pro) in order to add date and time in the packaging slip

Simply use the following code snippet in the packaging slip template to add the date / time

```html
{% raw %}
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
{% endraw %}
```

![Bird App details on Packing Slip](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image-45_wy4ojt.png)

|| Related Document: [Enable order confirmation email with slot date and time](https://help.birdchime.com/en-us/article/enable-order-confirmation-email-with-slot-date-and-time-iju71t/)
