---
id: 15fc7fb6-d5f0-4be5-b95b-6ff0ecf3c521
title: "Why Do You Need to Disable Shopify Store Pickup When Using BirdApp Store Pickup?"
category: rates
section: via-shopify-admin
slug: why-do-you-need-to-disable-shopify-store-pickup-when-using-birdapp-store-pickup
crisp_updated_at: 1736510358000
crisp_url: https://help.birdchime.com/en-us/article/why-do-you-need-to-disable-shopify-store-pickup-when-using-birdapp-store-pickup-7a6noz/
description: "Learn why disabling Shopify's built-in store pickup prevents customer confusion when using BirdApp store pickup features."
---

**You'll learn why disabling Shopify's built-in store pickup prevents customer confusion and ensures smooth checkout experiences.**

## Why Disable Shopify Store Pickup?

**BirdApp automatically disables Shopify's store pickup during rates setup to prevent customer confusion.**

This is because when both options are enabled, customers see two pickup choices at checkout:

- **BirdApp Store Pickup:** Shows your selected store address from the cart
- **Shopify Store Pickup:** Prompts customers to select a location again or uses default location

This creates uncertainty and may confuse customers about which option to choose.

**Consequences of keeping both enabled:**
- Duplicate location selection prompts
- Inconsistent pickup time displays
- Customers may select the wrong pickup option
- Potential checkout abandonment

![Shows the Shopify checkout interface where double store pickup options are shown](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1dvdnuj.png)

## Automatic Prevention

**BirdApp automatically disables Shopify store pickup during rates configuration.**

Merchants must confirm this action to proceed with setup. This prevents checkout conflicts and ensures customers only see your BirdApp pickup options.

## Manual Disable Process

**Follow these steps if you need to manually disable Shopify store pickup:**

1. **Go to Shopify Admin** → **Settings** → **Shipping and delivery**
2. **Scroll to Pickup in Store** section and click
3. **Click on "Pickup in Store" to open the settings**
4. **Toggle off store pickup for locations stating "Offers Pickup"**
5. **Save changes**

[Placeholder Screenshot: Shows the Shopify admin interface where store pickup can be disabled to prevent conflicts with BirdApp]

## Pickup-Only Store Exceptions

**Pickup-only stores can keep Shopify pickup enabled if they meet these specific conditions:**

- **No other delivery options enabled** (e.g., local delivery or shipping)
- **No rates configured**
- **Only store pickup enabled** as the fulfillment method

**Why this exception exists:**
When BirdApp has no competing delivery methods, it won't interfere with Shopify's pickup flow. However, if you later add delivery options or rates, you'll need to disable Shopify pickup to prevent conflicts.

**Important:** If you're unsure or plan to add delivery options later, it's safer to disable Shopify pickup from the start.

## Related Articles

- [Configure Pickup Rates](https://help.birdchime.com/en-us/article/configure-pickup-rates-1n7gumb/)
- [Get Started with App Setup](https://help.birdchime.com/en-us/article/how-to-set-up-the-bird-pickup-delivery-widget-1tra0ra/)

