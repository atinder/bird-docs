---
id: ec430410-d76d-48a0-8d32-554bb3863d28
title: "New Packaging Slip"
category: uncategorized
section: general
slug: new-packaging-slip
crisp_updated_at: 1749557795000
crisp_url: 
description: ""
---

# Add the selected date/time on the package slip or invoice and get it printed.

## Easy way- (Recommended)

1. Go to **Bird App Settings > Order Management**.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-11441_1gz7zgy.png =950x511)

2. Scroll to Order notes and fulfillment, and enable the following. This will add the date/time to the order note, which can then be printed on the packaging slip.

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-09-at-23200_1jmvhwk.png =1050x377)
![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-09-at-23361_1img6uh.png =1050x290)

3. To reflect content in the same format, Edit Your packaging slip, under **Bird App Settings > Notifications > Customer notifications > Edit packaging slip**.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-223454_1qz7eny.png =900x385)

Replace the following code.

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-10-at-00021_105juu1.png =950x439)
With
```{% raw %}
{{ order.note | replace: '|', '' | newline_to_br }}
{% endraw %}```

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-10-at-00115_3a52fe.png =950x439)

# Translate Date/Time in Invoice and packing slip (Optional)

Translate date/time on the packaging slip and get it printed.

1. Translate & Format the template accordingly as shown in screenshots (for example: English or German)

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-10-at-17055_16vcbm4.png =950xauto)

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-10-at-17114_1mah95c.png =950xauto)

2. Advanced conditional customizations (optional), For example (Use different location labels, or message based on delivery_method)
```{% raw %}
Method of Delivery: {{ delivery_method }}  
Date & Time of Delivery: {{ delivery_date }}, {{ delivery_time }}  
{% if delivery_location != '' %}
{% if delivery_method == 'Store Pickup' %} Pickup Location: {{ delivery_location }}  
{% else %} {{ delivery_location_label }}: {{ delivery_location }}
{% endif %}{% endif %}

{% if delivery_method == 'Store Pickup' %} Please reach at pickup location on time.  
{% elsif delivery_method == 'Local Delivery' %} Please be available for delivery.  
{% else %} Please be available — carrier cannot leave package without a signature.  
{% endif %}
{% endraw %}```

3. The translated fields in the packing slip will look like this.

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-10-at-17454_1ak20ov.png =950x397)

# Advanced Way - (Optional)

You will need [Order printer pro app](https://apps.shopify.com/order-printer-pro) in order to add date and time in the packaging slip.

Use the following code snippet in the packaging slip template to add the date/time.

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

![Bird App details on Packing Slip](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image-45_wy4ojt.png =1000x478)

|| Related Document: [Enable order confirmation email with slot date and time](https://help.birdchime.com/en-us/article/enable-order-confirmation-email-with-slot-date-and-time-iju71t/)
