---
id: 54018df8-cf5e-49d9-a756-f3ba7b71f910
title: "Adding Date/Time and Delivery Method to Shopify Staff Notification Emails"
category: notifications-and-validations
section: edit-shopify-notifications
slug: adding-datetime-and-delivery-method-to-shopify-staff-notification-emails
crisp_updated_at: 1746159339000
crisp_url: https://help.birdchime.com/en-us/article/adding-datetime-and-delivery-method-to-shopify-staff-notification-emails-ozlh06/
description: "Learn how to add delivery date, time, and method information to your Shopify staff notification emails for better order management."
---

**You'll learn how to display delivery date, time, and method in your Shopify staff notification emails for complete order visibility.**

When customers place orders with delivery scheduling, your staff needs immediate access to all delivery details. This guide shows you how to modify Shopify's staff notification template to include Bird Pickup & Delivery information.

## Access Staff Notification Settings

**Navigate to your Shopify notification settings to begin customization.**

1. Go to **Shopify Admin → Settings → Notifications → Staff Notifications**

![Shows the Shopify admin navigation path to reach the Staff Notifications section](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_wmbkha.png)

2. Click **Edit Code**

![Displays the Edit Code button that allows customization of the new order notification template](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_qjg7cr.png)

**Alternative:** Navigate via Bird App → Settings → Notifications → Staff notifications → New order notification email.

## Add Delivery Information to Email Template

**Insert the Bird App code snippet to display delivery details in your staff emails.**

Copy and paste this code above your order summary table:

```html
{% raw %}
{% 
  ###################################
  # Below code you can edit as per your store language
  ###################################
%}

{% assign translated_method = "Delivery,Pick Up,Shipping"  | split: "," %}
{% assign translated_days = "Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday"  | split: "," %}

{% 
  ###################################
  # Don't change below code
  ###################################
%}
  
  {% assign keyValuePairs = nil %}
  {% assign Bird_flag = true %}
        
{% for line_item in line_items %}
  {% for property in line_item.properties %}
   {% if property.first == '_BirdChimeSlotId' and Bird_flag %}
      {% assign Bird_flag = false %}  
    {% assign keyValuePairs = property.last | split: ";" %}
      {% for pair in keyValuePairs %}
        {% assign keyAndValue = pair | split: "=" %}
        {% assign key = keyAndValue[0] %}
        {% assign value = keyAndValue[1] %}
        {% case key %}
          {% when 'M' %}
            {% if value == 'D' %}
            {% assign Bird_Method = translated_method[0] %}
            {% elsif value == 'P'%}
              {% assign Bird_Method = translated_method[1] %}
            {% elsif value == 'S'%}
              {% assign Bird_Method = translated_method[2] %}
            {% endif %}
          {% when 'D' %}
            {% assign Bird_Date = value %}
          {% when 'L' %}
            {% assign Bird_Location_Id = value %}
          {% when 'T' %}
            {% assign Bird_Time = value %}
        {% endcase %}
        {% assign bird_index = Bird_Date | date: "%w" | plus: 0 %}
        {% assign Bird_Day =  translated_days[bird_index] %}
      {% endfor %}
    {% endif %}
  {% endfor %}
{% endfor %}

{% if order.attributes['Delivery Method'] and keyValuePairs == nil %}
  {% if order.attributes['Delivery Method']  == 'Delivery' %}
    {% assign Bird_Method = translated_method[0] %}
  {% elsif order.attributes['Delivery Method']   == 'Pick Up'%}
    {% assign Bird_Method = translated_method[1] %}
  {% elsif order.attributes['Delivery Method']  == 'Shipping'%}
    {% assign Bird_Method = translated_method[2] %}
  {% endif %}
  {% assign Bird_Date = order.attributes['Delivery Date'] %}
  {% assign Bird_Time = order.attributes['Delivery Time'] %} 

  {% if Bird_Method == translated_method[1]  and order.attributes['Delivery Location'] %}
    {% assign BIRD_LOCATION = order.attributes['Delivery Location'] %}
  {% endif %}

  {% assign bird_index = Bird_Date | date: "%w" | plus: 0 %}
  {% assign Bird_Day =  translated_days[bird_index] %}
{% endif %}
        

{% if order.attributes['Translated Delivery Time'] %}
  {% assign Bird_Time = order.attributes['Translated Delivery Time'] %} 
{% endif %}


{% 
  ###################################
  # Below code you can edit as per your need
  ###################################
%}

{% if Bird_Method %}
  <table class="container">
    <br/>
    <tr>
      <td>
        <h4>Delivery Method</h4>
        {{ Bird_Method }}<br>
        {{ BIRD_LOCATION }}
        {% if Bird_Date %}
          <h4>Date & Time</h4>
          {{ Bird_Date | date: "%d.%m.%Y" }}
          {% if Bird_Time %}
            {{ Bird_Time }}
          {% endif %}
          {% if Bird_Date %}
            ({{ Bird_Day }})
          {% endif %}
        {% endif %}
        <br/>
      </td>
    </tr>
  </table>
{% endif %}
{% endraw %}
```

**Place the code above your order summary table for optimal visibility.**

![Shows where to position the Bird App code snippet in relation to the order summary table in the email template](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_i4s4v9.png)

## Customize for Your Language

**Modify the translation arrays to match your store's language.**

Edit these lines in the code:

- `translated_method`: Change "Delivery,Pick Up,Shipping" to your language
- `translated_days`: Change "Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday" to your language

## Test Your Configuration

**Verify the delivery information displays correctly in staff emails.**

1. Save your template changes
2. Place a test order with delivery scheduling
3. Check the staff notification email

Your staff will now receive emails showing:
- Delivery method (Delivery, Pick Up, or Shipping)
- Pickup location (if applicable)
- Delivery date and time
- Day of the week

![The final result showing delivery method, date, time, and day information in the staff notification email](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_12nnw3u.png)

## Related Articles

- [Enable Internal Staff Notifications via BirdApp](https://help.birdchime.com/en-us/article/enable-internal-staff-notifications-via-birdapp-1kp1gtc/)
- [Add Date/Time to Customer Dashboard](https://help.birdchime.com/en-us/article/add-delivery-datetime-in-customer-dashboard-d7g9gd/)
- [Configure Email Branding](https://help.birdchime.com/en-us/article/set-up-email-branding-for-professional-customer-emails-10v7eid/)
