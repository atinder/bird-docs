---
id: f1aaa9f3-8fb7-4952-af74-637538cb76b8
title: "Remove Shopify Estimated Delivery from Order Confirmation Email Template"
category: notifications-and-validations
section: general
slug: hide-shopify-estimated-delivery-from-order-confirmation-email
crisp_updated_at: 1751334130000
crisp_url: https://help.birdchime.com/en-us/article/hide-shopify-estimated-delivery-from-order-confirmation-email-1vq7vfc/
description: "Step-by-step guide to edit your order confirmation email template and remove Shopify's default estimated delivery date. Prevents customer confusion when using Bird Pickup & Delivery scheduling. Includes code editing instructions for Mac and Windows."
---

**Remove Shopify's default estimated delivery date from order confirmation emails to eliminate customer confusion.**

Shopify's built-in pickup shows default estimated delivery dates in order confirmation emails. This confuses customers who selected specific dates through Bird Pickup & Delivery. Hide this conflicting information to provide clear, accurate scheduling details.

## How to Hide Estimated Delivery Date

Follow these steps to clean up your order confirmation email template:

### Step 1: Access Email Template Settings

1. Navigate to **Bird App > Settings > Notifications**
2. Click **Edit order confirmation email**
3. Locate the email template code editor

![Shows the Bird App settings navigation path to access order confirmation email templates](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_guwewr.png)

### Step 2: Find and Remove Estimated Delivery Code

1. Search for **"Estimated delivery"** in the email template code
2. Select the highlighted code block containing estimated delivery information
3. Remove or comment out the code using keyboard shortcuts:
   - **Mac:** Press **⌘ + /** 
   - **Windows:** Press **Ctrl + /**

![Demonstrates the code selection and commenting process to remove estimated delivery information](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1jtsolp.png)

### Step 3: Verify the Updated Template

Your updated order confirmation email will now display without the conflicting estimated delivery date:

![Shows the final email template without the estimated delivery date](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_vwmuo2.png)

## Test Your Changes

After completing these steps, verify your changes work correctly by placing a test order to see the updated email format.

## Related Articles

- [Enable order confirmation email with slot date and time](https://help.birdchime.com/en-us/article/enable-order-confirmation-email-with-slot-date-and-time-iju71t/)
- [How to customize the email templates](https://help.birdchime.com/en-us/article/how-to-customize-email-templates-kezxwj/)
- [Add datetime to draft order invoice](https://help.birdchime.com/en-us/article/add-datetime-to-draft-order-invoice-pmdpbi/)
