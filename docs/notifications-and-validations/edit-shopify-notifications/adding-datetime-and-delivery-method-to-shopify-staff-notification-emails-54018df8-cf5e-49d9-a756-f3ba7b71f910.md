---
id: 54018df8-cf5e-49d9-a756-f3ba7b71f910
title: "Adding Date/Time and Delivery Method to Shopify Staff Notification Emails"
category: notifications-and-validations
section: edit-shopify-notifications
slug: adding-datetime-and-delivery-method-to-shopify-staff-notification-emails
crisp_updated_at: 1729253194000
---

When a new order is placed, it’s essential that staff members receive an email with all the necessary details, including the customer’s selected slot date, time, and delivery method.


1. **Access Staff Notification Settings:**

* Go to **Shopify Admin → Settings → Notifications → Staff Notifications.**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_wmbkha.png)

* Under **New Order**, click on the **Edit Code** button.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_qjg7cr.png)

2. **Modify the New Order Notification Template:**

* Insert the Bird App’s code snippet for slot date, time, and method into the existing template. Make sure to place the code in a visible section, such as above the order summary table.

Below code you can edit as per your store language.

```html
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
```

We recommend to paste the entire code above the Order Summary table as shown below. You have the right to paste the code at any place.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_i4s4v9.png)

3. **Save and Test the Template:**

* Save your changes and place a test order to ensure that the slot date, time, and method are displayed correctly in the email.

![Staff Notification Email with Bird App Details](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_12nnw3u.png)


**Related Documents: ** [Enable Internal Staff Notifications via BirdApp](https://help.birdchime.com/en-us/article/enable-internal-staff-notifications-via-birdapp-1kp1gtc/?bust=1729251041430)
