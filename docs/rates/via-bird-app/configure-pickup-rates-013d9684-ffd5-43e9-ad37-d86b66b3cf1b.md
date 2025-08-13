---
id: 013d9684-ffd5-43e9-ad37-d86b66b3cf1b
title: "Set Up Pickup Rates with Flexible Pricing Conditions"
category: rates
section: via-bird-app
slug: configure-pickup-rates
crisp_updated_at: 1747734692000
crisp_url: https://help.birdchime.com/en-us/article/configure-pickup-rates-1n7gumb/
description: "Learn how to set up pickup rates for single or multiple locations using Bird Pickup & Delivery app with flexible pricing conditions."
---

**Set up pickup rates that automatically apply based on order conditions like price, day, urgency, weight, or product type.**

Configure pickup rates for single or multiple store locations. Your rates can be free or paid based on various conditions.

## Single Location Setup

**Configure uniform rates across all your locations.**

1. Select **"I have the same rates for all my locations"**
2. Click **Add Rate**

![Shows the rate configuration interface with the option to set same rates for all locations selected](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-175700_13kuovj.png)

## Multiple Location Setup

**Set different rates for each specific location.**

1. Select **"I have different rates for different store locations"**
2. Choose your target location
3. Click **Add Rate**

![Shows the interface for configuring rates for multiple locations with location selection dropdown](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-175839_1kmmvms.png)

## Rate Configuration

**Define your rate name and pricing conditions.**

1. Enter a **Rate Name** (e.g., "Standard Pickup", "Rush Pickup")
2. Set your **Rate Amount** (leave blank for free pickup)
3. Choose your **Condition Type**

![Shows the rate configuration form with fields](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/ratenamecondition_g2718c.png =600x600)

## Condition Types

### Price-Based Rates

**Charge different rates based on order value.**

- Enter **Minimum Order Price**
- Enter **Maximum Order Price**
- Set your **Rate Amount** (leave blank for free pickup)

![Shows price-based rate configuration with min/max order price fields and rate amount field](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122439_1k5kf7c.png =600x415)

### Day-Based Rates

**Set different rates for weekdays vs weekends.**

- Enter **Start Day** (e.g., Monday)
- Enter **End Day** (e.g., Friday)
- Set your **Rate Amount**

**Example:** Weekday rate ($10, Monday-Friday) and weekend rate ($15, Saturday-Sunday)

![Shows day-based rate configuration with Selected Day option fields](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122508_rzwl5n.png =600x410)

### Rush/Urgency Rates

**Charge premium rates for urgent pickup requests.**

- Enter **Min Days** (0 for same-day)
- Enter **Max Days** (1 for next-day)
- Set your **Rate Amount**

**Example:** Create separate rates for different urgency levels:

**Rate 1 - Same-day pickup:** Min Days = 0, Max Days = 0, Rate = $20
**Rate 2 - Next-day pickup:** Min Days = 1, Max Days = 1, Rate = $15  

*Note: Each rate condition applies to the entire range specified. Create separate rate entries with non-overlapping day ranges for different urgency levels.*

![Shows urgency-based rate configuration with min/max days fields for rush pricing](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122552_5va36d.png)

### Other Condition Types

**Set rates based on weight, product, date, or time.**

- **Weight:** Set minimum and maximum order weight in grams
- **Product:** Add specific product SKUs
- **Date:** Set date ranges on the calendar
- **Time:** Set minimum and maximum pickup times

![Dropdown menu with various condition types including weight, product, date, and time options](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1hv5x92.png)

### Multiple Conditions

**Combine multiple criteria for complex rate structures.**

1. Click **Add Condition**
2. Select your first condition type
3. Click **Add Condition** again for additional criteria
4. Define values for each condition

![Shows multiple conditions interface with the ability to add multiple criteria for complex rate structures](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122639_1vcvw6n.png =600x467)

![Shows the expanded multiple conditions form with multiple criteria fields visible](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122655_13ygahs.png =600x613)

## Condition Value Guidelines

**Set appropriate values for each condition type:**

- **Price:** Minimum and maximum order prices
- **Weight:** Minimum and maximum order weights (grams)
- **Day:** Start and end days of the week
- **Products:** Specific product SKUs
- **Urgency:** Minimum and maximum rush days
- **Date:** Calendar date ranges
- **Time:** Minimum and maximum pickup times

**That's it!** Your pickup rates are now configured and will automatically apply based on your conditions.

## Related Articles

- [Configure Delivery Rates](https://help.birdchime.com/en-us/article/configure-delivery-rates-1xbrder/)
- [Configure Shipping Rates](https://help.birdchime.com/en-us/article/configure-shipping-rates-llsy16/)
- [Rates Control](https://help.birdchime.com/en-us/article/rates-control-jjcrrp/)
