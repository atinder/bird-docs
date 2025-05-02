---
id: 88a90257-c02a-49ca-93bf-27771c858a72
title: "Enable order confirmation email with slot date and time"
category: order-management
section: general
slug: enable-order-confirmation-email-with-slot-date-and-time
crisp_updated_at: 1737566998000
---

Once a customer places an order, the customer needs to be informed about the date and time he/she has picked.

${frame}[Add Date & Time to Order Confirmation Email](https://www.loom.com/embed/9321a70d903743d581d5e98d8e61086a)
The order confirmation email can be updated by following the steps.

1. A) Shortcut Via our App: **BirdApp Settings > Notifications**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/notification-menu_17qic4j.png)

1. B. Then look for: **Edit order confirmation email**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-174151_1yuaa5d.png)

2. Or Via Shopify Admin : In your Shopify admin Go to **Setting > Notifications > Customer Notification > Order Confirmation**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/cusnotif_73nnd4.png)

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-174518_1rdfv3l.png)

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-174652_1m61qn1.png)

3. In the body of the email template insert the following code in the given sequence.

*Below code you can edit as per your store language.*
```ruby
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

We recommend pasting the entire code above the Order Summary table, as shown in the example below. For English, it will be labeled as "Order Summary" but for other languages, the label may vary. You are free to place the code wherever it best suits your needs.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-07-24-at-12000_158ssv4.png)

4. Below is a sample image of the order confirmation email with above template code

![Confirmation email with date & time](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-05-01-at-45214_l0mxb2.png)

5. Change date format (Optional)

You can use one of following options to format date in your desired format in the order confirmation email.
```ruby
{% raw %}
{{ Bird_Date | date: "%d-%m-%Y" }}
{% endraw %}
```

```ruby
{% raw %}
{{ Bird_Date | date: "%m-%d-%Y" }}
{% endraw %}
```

```ruby
{% raw %}
{{ Bird_Date | date: "%Y-%m-%d" }}
{% endraw %}
```

```ruby
{% raw %}
{{ Bird_Date | date: "%d.%m.%Y" }}
{% endraw %}
```

# In case of Store Pickup you should make the following change as well

1. Open the Order Confirmation Email Code:

2. Locate `{% raw %}{% case delivery_method %}{% endraw %}`  in the email code somewhere around line 15-24.

```html
{% raw %}
{% if order.attributes['Delivery Method'] == 'Shipping' %}
          We're getting your order ready to be shipped. We will notify you when it has been sent.
{% elsif order.attributes['Delivery Method'] == 'Delivery' %}
          We're getting your order ready to be delivered. We will notify you when it has been sent.
{% else %}
          Your pickup order has been received.
{% endif %}
{% endraw %}
```

Replace the selected text on the below screenshot with the above code snippet:

![Email template before](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-10-28-at-14243_1wbhlpg.png)

![Email template after replacing the text with code snippet](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-10-28-at-20738_d7462v.png)

|| **Note:** The changes in the Order Confirmation Email template can be viewed only by placing a Test Order.
|| Related Document: [Place a test order](https://help.birdchime.com/en-us/article/place-a-test-order-13fhz0a/)

Below is a sample image of the "Pickup order has been received email" with above template code

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/untitled_11max54.png)

| Related Document: [Add Date/Time in packaging slip or invoice.](https://help.birdchime.com/en-us/article/add-datetime-in-packaging-slip-or-invoice-m9smdk/)
