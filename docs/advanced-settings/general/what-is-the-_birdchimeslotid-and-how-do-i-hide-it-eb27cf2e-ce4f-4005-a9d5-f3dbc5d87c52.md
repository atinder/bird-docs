---
id: eb27cf2e-ce4f-4005-a9d5-f3dbc5d87c52
title: "What is the _BirdChimeSlotId and how do I hide it?"
category: advanced-settings
section: general
slug: what-is-the-_birdchimeslotid-and-how-do-i-hide-it
crisp_updated_at: 1730790111000
crisp_url: https://help.birdchime.com/en-us/article/what-is-the-birdchimeslotid-and-how-do-i-hide-it-jghlmi/
---

# What is _BirdChimeSlotId?

###### The _BirdChimeSlotId shows what the customer selected in the widget.
If you are using our Rates functionality, the private line item property called *BirdChimeSlotId will appear. * BirdChimeSlotId is used to determine which rates we should display to the customer within the Shopify checkout process. 

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-01-at-40419_jp881w.png)
*1. M=P means checkout method is pickup. P stands for pickup, D for delivery, and S for shipping.

*2. L=1 means the location with the id 1.

*3. D=2023-08-08 means the date the customer selected is August 8th, 2023.

*4. T=9:00 AM - 6:00 PM means they’ve selected 9:00 AM - 6:00 PM

# Test if BirdChimeSlotId appears on the cart page
_BirdChimeSlotId will be added as a line item property on one of the products in the cart after the details in our widget are selected.

To test if it's appearing on the cart page:

* Add a product to the cart.

* Go to the cart page.

* Select the details in our widget.

* Go to checkout.

* Go back to the cart.

If you are using a drawer cart, check if it's showing there, too.

If you see the _BirdChimeSlotId, it needs to be hidden. If you don't see it, no further action is needed.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-02-at-10484_rrshg9.png)

# Hide the _BirdChimeSlotId from the cart page
We automatically try to hide the BirdChimeSlotId from appearing on your shopping cart page, but depending on the theme you are using, it may need to be done manually.

* There are different variations of the code—find the one that appears on your theme.

* The code may also appear twice in the cart file—search for all the instances of the code.

### Note
Please reach out to us—we’ll be happy to hide the _BirdChimeSlotId for you. Only proceed if you are comfortable editing code yourself.
###### Option 1.a

Within your cart file (cart.liquid, cart-template.liquid, main-cart.liquid, etc.), find the following code:
```javascript
{% raw %}
{% unless p.last == blank %}
{% endraw %}
```
Replace the code above with the following code:
```javascript
{% raw %}
{% unless p.last == blank or p.first == '_BirdChimeSlotId' %}
{% endraw %}
```

###### Option 1.b

* Within your cart file (cart.liquid, cart-template.liquid, main-cart.liquid, etc.), find the following code:
```javascript
{% raw %}
{%- unless p.last == blank -%}
{% endraw %}
```
Replace the code above with the following code:
```javascript
{% raw %}
{%- unless p.last == blank or p.first == '_BirdChimeSlotId' -%}
{% endraw %}
```

###### Option 2
* Within your cart file (cart.liquid, cart-template.liquid, main-cart.liquid, etc.), find the following code:
```javascript
{% raw %}
{% if p.last != blank %}
{% endraw %}
```
* Replace the code above with the following code:
```javascript
{% raw %}
{% if p.last != blank and p.first != "_BirdChimeSlotId" %}
{% endraw %}
```

###### Option 3
* Within your cart file (cart.liquid, cart-template.liquid, main-cart.liquid, etc.), find the following code:
```javascript
{% raw %}
{% unless property.last == blank %}
{% endraw %}
```
* Replace the code above with the following code:
```javascript
{% raw %}
{% unless property.last == blank or property.first == '_BirdChimeSlotId' %}
{% endraw %}
```
If the code you found already has some additions to it, only append the code below:

```javascript
or p.first == "_BirdChimeSlotId"
```

```javascript
and p.first != "_BirdChimeSlotId"
```

```javascript
or property.first == '_BirdChimeSlotId'
```

###### Option 4
* Within your cart file (cart-ajax-template.liquid, cart-notification.liquid), find the following code:
```javascript
{% raw %}
<span class="ajaxcart__product-meta">{{@key}}: {{this}}</span>
{% endraw %}
```
*Remove this code

Example:

If none of the options match your use case, contact us and we'd be happy to help!

# Remove the _BirdChimeSlotId from the order
It's not possible for us to automatically remove the _BirdChimeSlotId from the order due to restrictions with Shopify's API.

If needed, you can remove it by clicking the Delete button which appears when you hover over the _BirdChimeSlotId.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-01-at-10121_1ivf5xd.png)

###### Related Document:

* [Attach Delivery Date In order Metafield using Shopify Flow](https://help.birdchime.com/en-us/article/attach-delivery-date-in-order-metafield-using-shopify-flow-14l1gfc/) – This guide helps you manage order data using metafields.
