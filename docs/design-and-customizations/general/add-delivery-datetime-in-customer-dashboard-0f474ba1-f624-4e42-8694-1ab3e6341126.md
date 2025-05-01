---
id: 0f474ba1-f624-4e42-8694-1ab3e6341126
title: "Add delivery date/time in customer dashboard"
category: design-and-customizations
section: general
slug: add-delivery-datetime-in-customer-dashboard
crisp_updated_at: 1701699716000
---

In order to show delivery date and time in customer dashboard you will need to edit 2 files described below.

* **Customers/account.liquid**

Add an additional column in the table header (thead tag) at the end along with other columns

```html
<th id="ColumnDate" scope="col" role="columnheader">Delivery Date / Time</th>
```
Add the following the in table body (tbody tag) at then end along with other columns

```html
<td>
	{% if order.attributes['Delivery Date'] %}
		<span>{{ order.attributes['Delivery Date'] }}</span>
	{% endif %}
  {% if order.attributes['Delivery Time'] %}
	   <span>, {{ order.attributes['Delivery Time'] }}</span>
  {% endif %}
</td>
```

* **Customers/order.liquid**

Add the following code near order date at the top

```html
{%- if order.attributes['Delivery Date'] -%}
  <p>Order Delivery Date: <span style="color:green;font-weight:bold">{{ order.attributes['Delivery Date'] }}</span></p>
	{%- if order.attributes['Delivery Time'] -%}
		<p>Order Delivery Time: <span style="color:green;font-weight:bold">{{ order.attributes['Delivery Time'] }}</span></p>
	{%- endif -%}
{%- endif -%}
```

### Need Help?

If you are facing issues with the setup like the slot picker not appearing or the slots not working as per your requirement. We provide setup assistance for free. Please ping us via **in-app chat bubble** or mail us at support@birdchime.com for setup assistance.
