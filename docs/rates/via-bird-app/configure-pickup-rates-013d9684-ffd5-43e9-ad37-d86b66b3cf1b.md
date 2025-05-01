---
id: 013d9684-ffd5-43e9-ad37-d86b66b3cf1b
title: "Configure Pickup Rates"
category: rates
section: via-bird-app
slug: configure-pickup-rates
crisp_updated_at: 1740705645000
---

# Configure Store Pickup Rates

This guide explains how to set up and manage pickup rates in the Bird App. Whether you have a single store or multiple locations, you can create flexible pickup rates based on various conditions like order value, day of the week, or urgency.

## Quick Start Guide

1. Navigate to **Bird App Settings > Rates**
2. Select **Pickup Rates**
3. Choose your location configuration:
   - Single location: "I have the same rates for all my locations"
   - Multiple locations: Configure rates per location

## Setting Up Pickup Rates

### Step 1: Choose Location Configuration

Select whether you want to apply the same rates across all locations or set different rates for each location.

* **Single Location Setup**: Choose "I have the same rates for all my locations"
* **Multiple Locations**: Rates can be configured individually for each store

![Location Configuration](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-14-175700_13kuovj.png)

### Step 2: Create a New Rate

1. Click the "Add Rate" button
2. Enter a descriptive rate name
3. Select the condition(s) that will trigger this rate

![Rate Creation](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/ratenamecondition_g2718c.png)

## Available Rate Conditions

### 1. Price-Based Rates
Set rates based on the order total value.
* **Example**: Free pickup for orders over $100
* **Configuration**:
  - Minimum Order Price: $100
  - Maximum Order Price: No limit
  - Rate Amount: Leave blank for free pickup

![Price Based Rate](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122439_1k5kf7c.png)

### 2. Day-Based Rates
Different rates for different days of the week.
* **Example**: Weekday vs Weekend Pricing
  - Weekdays (Mon-Fri): $10
  - Weekends (Sat-Sun): $15
* **Configuration**:
  - Create two separate rates with different day ranges

![Day Based Rate](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122508_rzwl5n.png)

### 3. Rush/Urgency Rates
Charge premium rates for expedited pickup.
* **Example**: Same-day or next-day pickup premium
  - Same day (0 days): $20
  - Next day (1 day): $15
* **Configuration**:
  - Min Days: 0 (Today)
  - Max Days: 1 (Tomorrow)

![Rush Based Rate](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122552_5va36d.png)

### 4. Additional Conditions
* **Weight-based**: Set rates by order weight (in grams)
* **Product-specific**: Apply rates to specific SKUs
* **Date-range**: Special rates for specific dates
* **Time-based**: Different rates for different times of day

![Additional Conditions](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1hv5x92.png)

### 5. Multiple Conditions
Combine different conditions for more specific rate rules.
* **Example**: Weekend + Order Value
  - Weekend orders over $200: Free pickup
  - Weekend orders under $200: $15 pickup fee

![Multiple Conditions](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-122639_1vcvw6n.png)

## Best Practices

1. **Name Your Rates Clearly**: Use descriptive names that indicate the condition and rate (e.g., "Weekend Premium Rate", "Free Pickup Over $100")
2. **Test Your Rates**: After setting up rates, test them with different scenarios to ensure they work as expected
3. **Regular Review**: Periodically review and adjust your rates based on business needs
4. **Consider Peak Times**: Set special rates for busy periods or holidays
5. **Clear Communication**: Ensure your pickup rates are clearly communicated to customers

| Note: You can modify rates at any time to adapt to your business needs.

## Related Guides

* [Configure Delivery Rates](https://help.birdchime.com/en-us/article/configure-delivery-rates-1xbrder/)
* [Configure Shipping Rates](https://help.birdchime.com/en-us/article/configure-shipping-rates-llsy16/)
* [Rates Control Overview](https://help.birdchime.com/en-us/article/rates-control-jjcrrp/)
