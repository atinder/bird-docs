---
id: 88a90257-c02a-49ca-93bf-27771c858a72
title: "Enable order confirmation email with slot date and time"
category: order-management
section: general
slug: enable-order-confirmation-email-with-slot-date-and-time
crisp_updated_at: 1750744247000
crisp_url: https://help.birdchime.com/en-us/article/enable-order-confirmation-email-with-slot-date-and-time-iju71t/
description: "Learn how to add delivery date, time, and method to your Shopify order confirmation emails using Bird Pickup & Delivery app."
---

**Add delivery date, time, and method to your order confirmation emails to keep customers informed about their scheduled delivery or pickup.**

Customers need clear confirmation of their scheduled delivery or pickup slot. This guide shows you how to add this information to your order confirmation email template.

${frame}[Step-by-step tutorial showing how to enable order confirmation emails with delivery date and time information](https://www.youtube.com/embed/rRfxDRGh_JA)

## Access the Email Template Settings

Choose your preferred method to access the order confirmation email template:

### Method 1: Via Bird Pickup & Delivery App (Recommended)

1. Go to **BirdApp Settings > Notifications**

![Shows the BirdApp settings navigation with Notifications menu highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/notification-menu_17qic4j.png =800x424)
2. Click **Edit order confirmation email**

![Shows the edit order confirmation email button in the notifications section](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-174151_1yuaa5d.png =800x336)
### Method 2: Via Shopify Admin

1. In your Shopify admin, go to **Settings > Notifications > Customer Notifications > Order Confirmation**

![Shows the Shopify admin navigation to customer notifications settings](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/cusnotif_73nnd4.png =800x450)

![Shows the order confirmation email template button in Shopify admin](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-174518_1rdfv3l.png =800x344)
2. Click **Edit Code** button

![Shows the email template preview interface with Edit Code button](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-174652_1m61qn1.png =800x720)

## Add the Delivery Information Code

**Tip:** Before editing, copy your current template code to a safe place. If needed, use Shopify’s **Restore to Default** button to revert.

```liquid
{% 
  ###################################
  # Customize these translations for your store language
  ###################################
%}

{% assign translated_method = "Delivery,Pick Up,Shipping"  | split: "," %}
{% assign translated_days = "Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday"  | split: "," %}

{% 
  ###################################
  # Don't modify the code below
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
  # Customize the display format below
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
```

**Recommended placement:** Insert this code above the Order Summary table in your email template.

![Shows where to place the delivery information code in relation to the Order Summary code section](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-07-24-at-12000_158ssv4.png =800x413)
## Preview Your Email Template

After adding the code, your order confirmation email will display delivery information like this:

![Shows a completed order confirmation email with delivery method, date, time, and day of the week clearly displayed](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-05-01-at-45214_l0mxb2.png =800x403)
## Customize Date Format (Optional)

Modify the date format in the code to match your preferences:

**DD-MM-YYYY format:**
```liquid
{{ Bird_Date | date: "%d-%m-%Y" }}
```

**MM-DD-YYYY format:**
```liquid
{{ Bird_Date | date: "%m-%d-%Y" }}
```

**YYYY-MM-DD format:**
```liquid
{{ Bird_Date | date: "%Y-%m-%d" }}
```

**DD.MM.YYYY format (default):**
```liquid
{{ Bird_Date | date: "%d.%m.%Y" }}
```

## Update Pickup Order Messages

For store pickup orders, update the delivery method message in your email template:

1. Locate the delivery method section in your email code (around lines 15-24)
2. Replace the existing code with:

```liquid
{% if order.attributes['Delivery Method'] == 'Shipping' %}
          We're getting your order ready to be shipped. We will notify you when it has been sent.
{% elsif order.attributes['Delivery Method'] == 'Delivery' %}
          We're getting your order ready to be delivered. We will notify you when it has been sent.
{% else %}
          Your pickup order has been received.
{% endif %}
```

![Shows the original email template before adding the pickup order message customization](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-10-28-at-14243_1wbhlpg.png =800x631)
![Shows the updated email template with the new pickup order message code in place](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-10-28-at-20738_d7462v.png =800x619)
**Result:** Your pickup orders will now display "Your pickup order has been received" instead of generic shipping messages.

![Shows a completed pickup order confirmation email with the customized pickup message](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/untitled_11max54.png =800x586)
## Test Your Changes

**Important:** Changes to the order confirmation email template only appear when you place a test order.

- [Place a test order](https://help.birdchime.com/en-us/article/place-a-test-order-13fhz0a/) to verify your email template works correctly
- Check that delivery date, time, and method display properly

If you need help, reach out to our support team — we'll set this up for you!

## Related Articles

- [Add date/time in packaging slip or invoice](https://help.birdchime.com/en-us/article/add-datetime-in-packaging-slip-or-invoice-m9smdk/)
- [Enable date and time on thank you page](https://help.birdchime.com/en-us/article/enable-date-and-time-on-thank-you-order-status-page-1mvhech/)
- [Customize email templates](https://help.birdchime.com/en-us/article/how-to-customize-email-templates-kezxwj/)
