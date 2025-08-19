---
id: 31deb6fc-4d85-4460-a960-25b5915ee6c8
title: "How to Add Delivery Date/Time to Draft Order Invoices"
category: notifications-and-validations
section: customer-notifications
slug: add-datetime-to-draft-order-invoice
crisp_updated_at: 1737999840000
crisp_url: https://help.birdchime.com/en-us/article/add-datetime-to-draft-order-invoice-pmdpbi/
description: "Step-by-step guide to show delivery date and time on draft order invoices. Configure Bird app settings, update Shopify templates, and customize labels for better customer communication."
---

**Display delivery date and time information on your draft order invoices.**

This guide shows you how to configure Bird Pickup & Delivery to automatically add delivery scheduling details to your draft order invoices.

## Enable Order Notes with Date/Time

**Configure Bird App to automatically generate order notes containing delivery information.**

1. Navigate to **Bird App Settings > Order Management**.

![Bird App Settings page showing the Order Management section navigation](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-11441_1gz7zgy.png)

2. Scroll down to **Order notes and fulfillment** and enable the "Append Date/Time to order note" checkbox. This automatically adds date/time information to order notes.

![Order Management settings showing the checkbox option](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12012_16buo4o.png)

3. Verify the order note updates with delivery information by placing a test order after enabling this option

![Example order note displaying delivery date and time information](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-27-at-51724_17806r2.png)

## Configure Draft Order Invoice Template

**Update your Shopify draft order invoice template to display the delivery information.**

1. Go to **Shopify Settings > Notifications > Customer Notifications**.

![Shopify admin showing the Notifications section with Customer Notifications option](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12233_97x97x.png)

2. Click **Draft order invoice**.

![Customer Notifications page highlighting the Draft order invoice option](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12819_enoi0u.png)

3. Click **Edit code** to modify the template.

![Draft order invoice template showing the Edit code button](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-27-at-53745_1mpqqog.png)

4. Copy this code to display order notes:

```liquid
{% raw %}
{% assign note_array = note | split: " | " %}
{% for note_item in note_array %}
   <p class="notes-details">{{ note_item }}</p>
{% endfor %}
{% endraw %}
```

5. Paste the code above the order summary table for optimal placement.

![Template Editor showing the approximate location where to paste the code](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-27-at-53835_izqcsq.png)

6. Click **Save** to apply your changes.

## Customize Order Note Labels

**Personalize the delivery information labels to match your brand voice.**

1. Enable **Bird App Settings > Order Management > Order notes and fulfillment > Translate order notes**.

![Order Management settings showing the Translate order notes option](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-13205_jd9si1.png)

2. Navigate to **Bird App Settings > Text & Languages > Edit**.

![Text & Languages section showing the Edit option for customization](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-13526_13li13b.png)

3. Update the delivery-related labels as needed for your business.

![Language editor showing customizable labels](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-13741_1ib1c8e.png)

## Test Your Configuration

**Verify the delivery information appears correctly on your draft order invoices.**

Go to your draft order edit page in Shopify admin and send a test invoice to see the delivery information display.

![Draft order page showing the invoice preview with added date and time](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-28-at-83853_14gw6vz.png)

That's it! Your draft order invoices now automatically include delivery date and time information, improving customer communication and reducing support inquiries about order scheduling.

## Related Articles

- [Add Date/Time in Packaging Slip or Invoice](https://help.birdchime.com/en-us/article/add-datetime-in-packaging-slip-or-invoice-m9smdk/)
- [Enable Order Confirmation Email with Slot Date and Time](https://help.birdchime.com/en-us/article/enable-order-confirmation-email-with-slot-date-and-time-iju71t/)
