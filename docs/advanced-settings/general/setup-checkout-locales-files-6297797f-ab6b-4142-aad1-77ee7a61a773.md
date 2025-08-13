---
id: 6297797f-ab6b-4142-aad1-77ee7a61a773
title: "Setup checkout locales files"
category: advanced-settings
section: general
slug: setup-checkout-locales-files
crisp_updated_at: 1738596196000
crisp_url: https://help.birdchime.com/en-us/article/setup-checkout-locales-files-1cw3r7h/
description: ""
---

# Why set up checkout locales?

Checkout locales are set up to update the labels in the Shopify Checkout pages based on the selected delivery method in our widget as shown below.

![Store Pickup Lables](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-09-at-84326_vzppar.png)

## How to setup these labels.

1. Locate Text & language. Click on the edit link next to the language.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/textandlanguagemenu_xjl02w.png)

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_m0h9kl.png)

2. Scroll down to find **Checkout page settings** . You will see the following warnings in the app's settings page, if the locales are not configured properly.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1nfj5r.png)

3. Click on **create in theme** link next to any missing files above.

* For the **pickup locale** create the filename as shown in the screenshot below and paste the following content.

||| Make sure the filename matches with the one shown in the error field above.

![Add pickup locale and paste following code](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-09-at-11121_f27vh3.png)

```json
{% raw %}
{
  "shopify": {
    "checkout": {
      "contact": {
        "phone_label": "Your phone number",
        "optional_phone_label": "Your phone number (optional)",
        "phone_placeholder": "Your phone number",
        "optional_phone_placeholder": "Your phone number (optional)",
        "shipping_address_title": "Pickup address",
        "first_name_label": "Your first name",
        "optional_first_name_label": "Your first name (optional)",
        "first_name_placeholder": "Your first name (optional)",
        "optional_first_name_placeholder": "Your first name",
        "last_name_label": "Your last name",
        "optional_last_name_label": "Your last name (optional)",
        "last_name_placeholder": "Your last name",
        "optional_last_name_placeholder": "Your last name (optional)"
      },
      "delivery_options": {
        "shipping_address": "Pickup Address"
      },
      "thank_you": {
        "marker": {
          "shipping": "Pickup address",
          "current": "Pickup address"
        },
        "shipping_address_title": "Pickup address",
        "order_updates_subscribe_to_email_notifications": "Get pickup updates by email",
        "order_updates_subscribe_to_phone_notifications": "Get pickup updates by email or SMS",
        "order_updates_subscribe_to_email_or_phone_notifications": "Get pickup updates by SMS"
      },
      "general": {
        "continue_to_shipping_method": "Continue",
        "back_to_shipping_method": "Back",
        "edit_shipping_address": "Edit",
        "edit_shipping_method": "Edit"
      },
      "order_summary": {
        "free_shipping_discount_label": "Free pickup",
        "shipping_label": "Store Pickup"
      },
      "shipping": {
        "delivery_title": "Store Pickup",
        "waiting_on_rate_notice": "Please wait while we fetch available pickup rates...",
        "no_rates_for_cart_or_destination_notice": "Pickup is not available for your cart or destination.",
        "no_rates_for_country_notice": "We do not offer pickups in {{ country }}.",
        "please_enter_your_shipping_information_notice": "Please go back to the shopping cart page and choose a pickup location."
      },
      "payment": {
        "same_billing_address_label": "Please use the option below ⬇"
      },
      "shipping_title": "Store Pickup"
    }
  }
}
{% endraw %}
```

* For the **delivery locale** create the filename as shown in the screenshot below and paste the following content.

![Add delivery locale and paste following code](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-09-at-11165_1tthtgn.png)

```{% raw %}json
{
  "shopify": {
    "checkout": {
      "tips": {
        "title": "Driver tip",
        "add_tip": "Add tip",
        "description": "Add a tip for your delivery driver",
        "message": ""
      },
      "general": {
        "continue_to_shipping_method": "Continue to delivery methods",
        "back_to_shipping_method": "Return to delivery method",
        "edit_shipping_address": "Edit delivery address",
        "edit_shipping_method": "Edit delivery method"
      },
      "review": {
        "blocks": {
          "shipping_address_title": "Deliver to"
        }
      },
      "contact": {
        "shipping_address_title": "Delivery address"
      },
      "delivery_options": {
        "shipping_address": "Delivery Address"
      },
      "order_summary": {
        "free_shipping_discount_label": "Free delivery",
        "discount_requires_customer_notice": "Please submit your delivery information to apply the {{code}} discount code",
        "shipping_information_does_not_meet_discount_requirements_notice": "Your delivery information does not meet the requirements for the {{code}} discount code",
        "shipping_label": "Delivery"
      },
      "shipping": {
        "shipping_method_title": "",
        "delivery_title": "Delivery",
        "waiting_on_rate_notice": "Please wait while we fetch available delivery rates...",
        "no_rates_for_cart_or_destination_notice": "There are no delivery methods available for your cart or destination.",
        "no_rates_for_country_notice": "We do not offer delivery to {{country}}.",
        "please_enter_your_shipping_information_notice": "Please enter your delivery information"
      },
      "payment": {
        "same_billing_address_label": "Same as delivery address"
      },
      "shipping_errors": {
        "shipping_method": "Your cart has been modified and the delivery rate you previously selected no longer applies. Please select a new rate."
      },
      "thank_you": {
        "shipping_information_title": "Delivery information",
        "shipping_address_title": "Delivery address",
        "shipping_method_title": "Delivery method",
        "marker": {
          "shipping": "Delivery address",
          "current": "Current delivery location"
        },
        "track_shipment": "Track delivery",
        "confirmed_description_html": "We have accepted your order, and we are getting it ready. A confirmation email has been sent to {{ email }}. Come back to this page for updates on your delivery status.",
        "no_tracking_number": "There is no tracking number for this delivery.",
        "unfulfilled_items_title": "Preparing for delivery",
        "unfulfilled_items_description": "We are currently preparing these items for delivery.",
        "fulfillment": {
          "unfulfilled_table_title": "Items preparing for delivery",
          "fulfilled_table_title": "Items in this delivery"
        },
        "login_title": "Login to view all delivery details",
        "failed_title": "We could not deliver your order",
        "delivered_description_html": "Your order has been delivered to the address you provided. If you haven't received it, or if you have any other problems, please {{ contact_us }}.",
        "delivered_title": "Your order has been delivered",
        "attempted_delivery_description_html": "An attempt was made to deliver your order but it was unsuccessful. Please {{ contact_us }} to arrange another delivery attempt.",
        "attempted_delivery_title": "An attempt was made to deliver your order",
        "out_for_delivery_description_html": "Your order is on the delivery truck - expect it to arrive today. If you still haven't received it in the next 2 days, please {{ contact_us }}.",
        "out_for_delivery_title": "Your order is out for delivery",
        "in_transit_description": "Come back to this page for updates on your delivery status.",
        "in_transit_title": "Your order is on the way",
        "confirmed_title": "Your delivery is confirmed",
        "order_updates_subscribe_to_email_notifications": "Get delivery updates by email",
        "order_updates_subscribe_to_phone_notifications": "Get delivery updates by email or SMS",
        "order_updates_subscribe_to_email_or_phone_notifications": "Get delivery updates by SMS"
      }
    },
    "notices": {
      "cart": {
        "shipping_address_not_required": "This cart does not require delivery",
        "shipping_address_invalid": "Invalid delivery address"
      }
    }
  }
}
{% endraw %}```
