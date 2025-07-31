---
id: 467dc839-ac13-4dde-a6f5-37d01e110f8d
title: "Set Up Postal Code Validation for Local Delivery"
category: notifications-and-validations
section: validations
slug: how-to-validate-local-delivery-postal-code-in-widget
crisp_updated_at: 1739204749000
crisp_url: https://help.birdchime.com/en-us/article/how-to-validate-local-delivery-postal-code-in-widget-1fi7kha/
description: "Learn how to restrict local delivery by validating customer postal codes directly in the Bird Pickup & Delivery widget."
---

**You will restrict local delivery to specific postal codes using the Bird Pickup & Delivery widget.**

Postal code validation prevents orders outside your delivery area. It improves customer experience by showing delivery options only where you operate.

## Choose Your Postal Code Validation Method

**First, decide HOW your postal codes will be validated.**

Go to **Bird App Settings > Validations > Distance Validation Mode** and select your preferred option:

![Distance Validation Mode settings showing the three validation options](/imgs/how-to-validate-local-delivery-postal-code-in-widget-01.png)

### Exact Postal Code Match
- Matches the full postal code exactly
- Use for precise control over specific codes
- Example: `1100` matches only `1100`, not `11001`

### Partial Postal Code Match
- Uses asterisk (*) for wildcard matching at the end
- Matches postal codes starting with the same digits
- Example: `11*` matches `1100`, `11021`, `11999`

### Advanced Postal Code Match
- Supports underscore (_) for spaces and asterisk (*) at the end
- Ideal for UK postal codes with spaces
- Examples: `B1_*` matches `B1 1AA`, `B1 2BB`
- Examples: `B11_*` matches `B11 1AA`, `B11 2BB`

**Select the mode that matches your postal code format and delivery requirements.**

## Set Up Postal Code Validation

### Single Schedule Stores

**Configure delivery postal codes for all locations at once.**

1. Go to **Bird App Settings > Validations**.

![Bird App Validations settings page, showing option where you configure delivery postal codes highlighted](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-at-11012_tkeuzb.png)

2. Enter postal codes in **Local delivery zip / postal codes**.
   - Use exact codes: `1100`, `11021`
   - Use wildcards for ranges: `11*` for all codes starting with 11
   - **Note:** The format you use depends on the Distance Validation Mode you selected above

3. Click **Save**.

![Postal code input field with example of exact postal code entered](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-24-033107_157sm74.png)

**That's it! The widget now validates postal codes for all locations.**

### Multi-Location Stores

**Set unique delivery postal codes for each location.**

1. Go to **Bird App Settings > Configure Locations**.

![Configure Locations menu option highlighted in the Bird App settings navigation](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-at-11061_1tcfsui.png)

2. Select a location and enable **Local Delivery**.

![Location selection screen showing multiple store locations available for configuration](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-at-11101_1ig78i2.png)

![Showing Local delivery toggle enabled](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-06-at-11134_18w9cqi.png)

3. Click **Edit Settings** under Local Delivery. Scroll to **Local delivery postal codes** and enter postal codes for this location.
   - Use exact codes: `1100`, `11021`
   - Use wildcards for ranges: `11*` for all codes starting with 11
   - **Note:** The format you use depends on the Distance Validation Mode you selected above

4. Click **Save**.

![Entering and saving postal codes for a specific location](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-24-034218_462f1e.png)

**That's it! Each location now validates its own delivery postal codes.**

## Test Your Postal Code Validation

**Verify your setup is working correctly.**

### Option 1: Enable Global Postal Code Checker
1. Go to **Bird App Settings > Validations**
2. Enable **"Enable Global Postal Code Checker"** - This allows customers to check delivery availability to their postal code on any page of your store
3. Test by entering different postal codes on your store's pages

### Option 2: Manual Testing
1. Add items to your cart
2. Enter a postal code that should be **included** in your delivery area - local delivery should appear as an option
3. Enter a postal code that should be **excluded** from your delivery area - local delivery should not appear
4. Test with different postal code formats based on your Distance Validation Mode setting

**If local delivery options don't appear as expected, double-check your Distance Validation Mode setting and postal code format.**

## Related Articles
- [How to add a minimum order value validation message](https://help.birdchime.com/en-us/article/how-to-add-a-minimum-order-value-validation-message-uihm3w/)
- [Abandoned cart and checkout validation](https://help.birdchime.com/en-us/article/abandoned-cart-and-checkout-validation-ikfjdc/)
- [Enable internal staff notifications via BirdApp](https://help.birdchime.com/en-us/article/enable-internal-staff-notifications-via-birdapp-1kp1gtc/)
- [Add datetime in packaging slip or invoice](https://help.birdchime.com/en-us/article/add-datetime-in-packaging-slip-or-invoice-m9smdk/)
