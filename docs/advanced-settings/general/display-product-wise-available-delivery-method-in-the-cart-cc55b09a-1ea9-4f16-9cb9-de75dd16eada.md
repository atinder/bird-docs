---
id: cc55b09a-1ea9-4f16-9cb9-de75dd16eada
title: "Display product wise available delivery method in the cart?"
category: advanced-settings
section: general
slug: display-product-wise-available-delivery-method-in-the-cart
crisp_updated_at: 1730790125000
crisp_url: https://help.birdchime.com/en-us/article/display-product-wise-available-delivery-method-in-the-cart-h7rzfe/
description: ""
---

**End Result : **

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/imagejvlw0q_8rmra4.png)

1. Go to the products section, open a product, and enter the delivery method tags for example

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-03-09-at-85809_1ces4vj.png)

2. Go to the theme customiser. Click on edit code.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-02-10-at-10417_1hkruva.png)

3. A new window will open after clicking on the edit code button as shown below.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-02-10-at-11648_yjl28j.png)

4. Look for the cart page in the search files box. The cart page name will vary in some themes for ex. in some themes you will see that as cart.js or in some cart.liquid.js or cart-template.liquid

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-02-14-at-11511_cqyeth.png)

5. Now click on the cart template.liquid page then add below snippet code above  or  of cart_details

```javascript
{% raw %}
{% if item.product.tags contains "pick up" %}
         <p style="color:green"><strong>Pickup Available</strong></p>
{% endif %}
{% if item.product.tags contains "local delivery" %}
         <p style="color:green"><strong>Local Delivery Available</strong></p>
{% endif %}
{% if item.product.tags contains "Courier" %}
         <p style="color:green"><strong>Shipping Available</strong></p>
{% endif %}
{% endraw %}
```

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-03-09-at-11513_cq0gn0.png)

###### Related Document:

* [Change cart type](https://help.birdchime.com/en-us/article/change-cart-type-1g2elmy/) – This guide explains configuring the app to be used on the cart page and customizing the display.
