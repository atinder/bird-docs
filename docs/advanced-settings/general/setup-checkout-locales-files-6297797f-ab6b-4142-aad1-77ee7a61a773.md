---
id: 6297797f-ab6b-4142-aad1-77ee7a61a773
title: "Setup checkout locales files"
category: advanced-settings
section: general
slug: setup-checkout-locales-files
crisp_updated_at: 1738596196000
crisp_url: https://help.birdchime.com/en-us/article/setup-checkout-locales-files-1cw3r7h/
description: "Configure checkout page labels to match your delivery methods for a seamless customer experience"
---

# Configure Checkout Page Labels

**You'll customize checkout page text to match your delivery methods and create a professional customer experience.**

Checkout locales update labels on Shopify checkout pages based on your delivery method. This creates a consistent customer experience.

Use this feature when your checkout page shows generic shipping terms instead of pickup or delivery language.

![Shows how checkout page labels change to display "Store Pickup" instead of generic shipping terms when pickup is selected](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-09-at-84326_vzppar.png)

## Two Ways to Customize Checkout Language

You have two options for customizing checkout page labels:

1. **Bird App's Built-in Interface** - Use the app's user-friendly settings (recommended)
2. **Manual Locale File Customization** - Edit or create JSON files directly (advanced)

## Option 1: Bird App's Built-in Interface (Recommended)

**Use this method for easy, visual customization without technical knowledge.**

### Access Language Settings

1. Navigate to **Bird App Settings > Text & Languages**
2. Click **Edit** next to your primary language

![Shows the Bird App settings navigation to access Text & Languages section](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/textandlanguagemenu_xjl02w.png)

![Displays the edit button next to the language selection in Bird App settings](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_m0h9kl.png)

### Edit Checkout Page Language

1. Scroll to **Checkout Page** section
2. Click **Edit checkout page language**

![The Checkout Page section with the Edit option highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/editcheckoutpage_irh0zd.png)

### Find and Edit Specific Text

**Use the search feature to quickly locate text:**

1. Click the **magnifying glass icon** in the top right corner
2. Type the exact text you see on your checkout page (e.g., "Ship", "Pick up", "Local delivery")
3. Press **F** key for instant search
4. Edit the text directly in the form fields

![Shows the checkout labels for options like Pick up and Local delivery that can be customized](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1edtjd2.png)

![Shows the form where you can modify the shipping labels and other checkout text fields](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1pfcww.png)

### Verify Changes

1. Save your changes
2. Reload your checkout page to see updates live

![The Shopify checkout page displaying updated language label for Pick up](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1xj5rex.png)

**That's it!** Your checkout page now displays your custom labels.

## Option 2: Manual Locale File Customization (Advanced)

**Use this method for precise control or when the built-in interface doesn't support your language.**

### Step 1: Check Your Current Setup

1. Navigate to **Bird App Settings > Text & Languages**
2. Click **Edit** next to your primary language
3. Scroll to **Checkout page settings** section

If you see warnings about missing locale files, you need to create them:

![Shows error messages indicating missing locale files that need to be created](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1nfj5r.png)

### Step 2: Edit Existing Locale Files (Most Common)

**If you see existing locale files or no warnings, edit them to customize specific text:**

1. **Identify the text you want to change** on your checkout page
2. **Search for that text** in the JSON file using Ctrl+F (or Cmd+F on Mac)
3. **Replace the text** with your desired label
4. **Save the file** to apply changes

**Example:** To change "Store Pickup" to "Local Collection":
- Search for `"Store Pickup"` in the JSON
- Replace with `"Local Collection"`
- Save the file

**Common text to customize:**
- `"shipping_label": "Store Pickup"` → `"shipping_label": "Local Collection"`
- `"delivery_title": "Delivery"` → `"delivery_title": "Home Delivery"`
- `"shipping_address_title": "Pickup address"` → `"shipping_address_title": "Collection Point"`

### Step 3: Create Missing Locale Files (Last Resort)

**Only if you see warnings about missing locale files:**

#### Create Pickup Locale File

1. Click **Create in theme** next to the missing pickup locale file
2. Use the exact filename shown in the error message
3. Paste the following JSON content:

![Shows the file creation interface with 
the correct filename format for pickup locales](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-09-at-11121_f27vh3.png)

```json
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
```

#### Create Delivery Locale File

1. Click **Create in theme** next to the missing delivery locale file
2. Use the exact filename shown in the error message
3. Paste the following JSON content:

![Shows the file creation interface](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-09-at-11165_1tthtgn.png)

```json
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
```

### Verify Configuration

After editing or creating locale files, refresh your Bird app settings page. The warnings should disappear, confirming successful configuration.

**That's it!** Your checkout pages now display appropriate labels for both pickup and delivery methods.

## Related Articles

- [Modify checkout page language](https://help.birdchime.com/en-us/article/modify-checkout-page-language-1l5y8h7/)
- [How to customize the widget look](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
- [Getting started with app setup](https://help.birdchime.com/en-us/article/how-to-set-up-the-bird-pickup-delivery-widget-1tra0ra/)