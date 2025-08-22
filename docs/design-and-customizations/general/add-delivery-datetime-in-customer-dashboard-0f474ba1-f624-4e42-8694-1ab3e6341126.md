---
id: 0f474ba1-f624-4e42-8694-1ab3e6341126
title: "Display delivery date and time in Shopify customer dashboard"
category: design-and-customizations
section: general
slug: add-delivery-datetime-in-customer-dashboard
crisp_updated_at: 1701699716000
crisp_url: https://help.birdchime.com/en-us/article/add-delivery-datetime-in-customer-dashboard-d7g9gd/
description: "Customize your Shopify customer dashboard to show delivery scheduling information in order lists and individual order pages. Edit Liquid templates to display delivery dates and times prominently."
---

**Display delivery date and time information directly in your customer dashboard for better order visibility.**

This customization shows customers their scheduled delivery details in both the order list and individual order views. You'll edit two Liquid template files to add this functionality.

[PLACEHOLDER Screenshot: Add relevant screenshots]

## Edit the Order List Template

**Advanced Customization:** This requires theme editing experience. Always backup your theme before making changes.

**Modify `customers/account.liquid` to show delivery information in the orders table.**

### Add Table Header

Add this column header to your table's `<thead>` section:

```html
<th id="ColumnDate" scope="col" role="columnheader">Delivery Date / Time</th>
```

### Add Table Data

Insert this code in your table's `<tbody>` section:

```liquid
{% raw %}
<td>
	{% if order.attributes['Delivery Date'] %}
		<span>{{ order.attributes['Delivery Date'] }}</span>
	{% endif %}
  {% if order.attributes['Delivery Time'] %}
	   <span>, {{ order.attributes['Delivery Time'] }}</span>
  {% endif %}
</td>
{% endraw %}
```

## Edit the Individual Order Template

**Modify `customers/order.liquid` to display delivery details prominently.**

Add this code near the order date section at the top of the page:

```liquid
{% raw %}
{%- if order.attributes['Delivery Date'] -%}
  <p>Order Delivery Date: <span style="color:green;font-weight:bold">{{ order.attributes['Delivery Date'] }}</span></p>
	{%- if order.attributes['Delivery Time'] -%}
		<p>Order Delivery Time: <span style="color:green;font-weight:bold">{{ order.attributes['Delivery Time'] }}</span></p>
	{%- endif -%}
{%- endif -%}
{% endraw %}
```

**That's it! Your customer dashboard now displays delivery scheduling information.**

## Related Articles

- [Customize widget appearance](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
- [Manual widget placement](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/)
