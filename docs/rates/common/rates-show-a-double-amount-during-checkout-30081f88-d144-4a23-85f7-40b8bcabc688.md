---
id: 30081f88-d144-4a23-85f7-40b8bcabc688
title: "Why Shipping Rates Show Double Amounts During Checkout"
category: rates
section: common
slug: rates-show-a-double-amount-during-checkout
crisp_updated_at: 1747736356000
crisp_url: https://help.birdchime.com/en-us/article/rates-show-a-double-amount-during-checkout-a2ppko/
description: "Learn why shipping rates appear doubled during checkout and how to resolve this issue with multiple shipping profiles"
---



**You'll understand why combined shipping rates appear and how to manage multiple shipping profiles effectively.**

When customers add products from different shipping profiles to their cart, Shopify automatically combines the separate rates into a single total. This creates the appearance of "double" shipping costs.

## How Combined Shipping Rates Work

Shopify combines shipping rates when:

- Products come from multiple shipping profiles
- Items ship from different locations within profiles
- Each profile has its own rate configuration

The system calculates separate rates for each profile's products, then displays the combined total at checkout.

![Shipping and delivery settings page with multiple shipping profiles configured, demonstrating how different profiles can have separate rate structures](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-04-15-at-72206_1trfxa9.png)

## Identify the Root Cause

Follow these steps to diagnose combined shipping rates:

1. **Check your shipping profiles**
   - Go to **Settings > Shipping and delivery**
   - Look for multiple active profiles
   - Review rate configurations in each profile

![Displays different shipping rates configured across multiple profiles](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-04-15-at-74218_1g784qb.png)

2. **Test with mixed cart items**
   - Add products from different profiles to cart
   - Check the shipping rate calculation
   - Verify the combined total

![Cart containing products from different shipping profiles, illustrating how mixed-profile orders trigger rate combination](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-04-15-at-73915_7s58v4.png)

![Demonstrates the checkout page showing combined shipping rates from multiple profiles, with the total clearly displayed to the customer](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-04-15-at-74150_phpdwl.png)

## Solutions to Manage Combined Rates

### Option 1: Consolidate Shipping Profiles
- Merge similar products into single profiles
- Use location-based shipping instead of profile-based
- Simplify your shipping structure

### Option 2: Adjust Rate Calculations
- Set lower base rates in each profile
- Use conditional rates based on order value
- Configure free shipping thresholds

### Option 3: Use Bird Pickup & Delivery Rate Controls
- Configure unified delivery rates through our app
- Set up location-based rate matching
- Create custom rate rules for mixed orders

## Best Practices

- **Keep profiles minimal**: Use only necessary shipping profiles
- **Test thoroughly**: Verify rates with various product combinations
- **Communicate clearly**: Inform customers about combined shipping
- **Monitor regularly**: Check for unexpected rate combinations

## Related Resources

- [Configure delivery rates via Bird app](https://help.birdchime.com/en-us/article/configure-delivery-rates-1xbrder/)
- [Rates control and management](https://help.birdchime.com/en-us/article/rates-control-jjcrrp/)
- [Common reasons for rate errors](https://help.birdchime.com/en-us/article/common-reasons-for-rate-errors-on-checkout-page-1iekz2h/)

*For detailed information about Shopify's combined shipping rates, visit the [Shopify Help Center](https://help.shopify.com/en/manual/shipping/setting-up-and-managing-your-shipping/shipping-profiles/combined-shipping-rates).*

## FAQs

##### Why do I see different shipping rates for the same products?
Shipping rates vary based on the profile each product belongs to. Products in different profiles may have different rate structures.

##### Can I prevent rate combination?
No, Shopify automatically combines rates when products come from multiple profiles. This is standard e-commerce behavior.

##### How do I know which products are in which profiles?
Check your product settings in Shopify admin. Each product is assigned to a specific shipping profile.

##### Will customers be charged twice for shipping?
No, customers pay the combined total, not double charges. The system calculates the appropriate total for all items.

For more general questions, see our main [FAQs page](https://help.birdchime.com/en-us/category/faqs-1ygmxau/).

