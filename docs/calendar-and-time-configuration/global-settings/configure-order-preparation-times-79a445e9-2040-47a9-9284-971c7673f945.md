---
id: 79a445e9-2040-47a9-9284-971c7673f945
title: "How to Configure Order Preparation Time"
category: calendar-and-time-configuration
section: global-settings
slug: configure-order-preparation-times
crisp_updated_at: 1750741903000
crisp_url: https://help.birdchime.com/en-us/article/configure-order-preparation-times-1b43s8n/
description: "Learn how to set up order preparation times to control when customers can select delivery slots based on your store's processing capabilities."
---

**Configure order preparation times to control when customers can select delivery slots based on your store's processing schedule.**

Order preparation times control when customers can select delivery slots. They align with your store's processing capabilities. This prevents overbooking and manages customer expectations effectively.

${frame}[Demonstrates how to navigate to and configure order preparation time settings in the Bird app dashboard](https://www.youtube.com/embed/3hXp2jyI-eY)

## Access Preparation Time Settings

To configure your preparation time settings, follow the steps below based on your store setup:

- If you manage a single schedule for all locations, go to **Bird App Settings > Pickup & Delivery** and access the delivery method settings.

- If you have selected **"I have different schedule for different store locations"**, navigate to **Bird App Settings > Configure Locations > Select a Location**, then access the delivery method settings for that specific location.

## Enable Preparation Time Feature

1. Toggle **Enable Preparation Time** to activate the feature

![Shows the preparation time toggle switch in the Bird app settings interface](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-071225_1r94amt.png)

## Choose Preparation Time Configuration

Select one of two options:

- **Same Preparation Time for All Days:** Use when your processing time remains consistent throughout the week
- **Customize Preparation Time by Day:** Use when you need different processing times for specific days

![Displays the two preparation time configuration options - uniform vs. customized by day](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-14152_1s7w0kw.png)

## Set Lead Time

Lead time is the minimum time required before an order can be fulfilled.

### Lead Time Examples

**4 Hours Lead Time:**
- Order placed at 10:00 AM Monday
- Earliest available slot: 2:00 PM Monday

**1 Day Lead Time:**
- Order placed Monday at 11:00 AM
- Available slots: Tuesday onwards

**2 Days Lead Time:**
- Order placed Monday
- Available slots: Wednesday onwards

### Understanding Day Boundaries

The system respects day boundaries when calculating lead times. This ensures consistent scheduling and prevents orders from rolling over to early morning hours.

**Example with 4-hour lead time:**
- Order placed at 2:00 PM Monday → Earliest slot: 6:00 PM Monday
- Order placed at 7:00 PM Monday → Earliest slot: 11:00 PM Monday
- Order placed at 11:00 PM Monday → Earliest slot: 12:00 AM Tuesday (next day)

This approach provides predictable scheduling and aligns with typical business hours.

![Shows the lead time configuration interface with time input fields](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-15141_rnxdwd.png)

## Configure Cut-Off Time

Cut-off time determines when your store stops accepting new orders each day.

### Cut-Off Time Logic

**Before Cut-off Time (6:00 PM):**
- Lead time: 1 day
- Customers can select next-day slots

**After Cut-off Time (6:00 PM):**
- Lead time: 2 days
- Customers can only select slots starting two days from then (e.g., if ordering Sunday after 6:00 PM, the earliest available slot is Tuesday).

![Illustrates the cut-off time configuration with before/after lead time settings](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-15502_5afvyy.png)

### Cut-Off Time Rules

**Set the lead time after cut-off to be longer than before cut-off.**

This ensures you have enough processing time for orders placed after closing.

**Example:**
- **Before 6:00 PM cut-off:** 1 day lead time
- **After 6:00 PM cut-off:** 2 days lead time

**Why this works:**
Orders placed after closing need extra time since your operations have ended for the day.

**Important:** Configure preparation times for all 7 days when using the "Customize by Day" option.

![Shows the complete preparation time configuration with all settings applied](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-15654_199eqrj.png)

## Preview Your Widget Configuration

**Verify your settings work correctly by previewing the widget.**

Click **Widget Preview** to see your updated configuration on the top right corner in the Bird App. You can use this to simulate any date time you want to check your advanced rules.

![Shows the widget preview option in the settings interface for testing configurations](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-06-04-at-11365_1foxsqn.png)

## Related Articles

- [Enable Same Day/Next Day Delivery for Specific Products](https://help.birdchime.com/en-us/article/enable-same-daynext-day-delivery-for-specific-products-hfb1hm/)
- [How to Block Dates from Calendar](https://help.birdchime.com/en-us/article/how-to-block-dates-from-calendar-tllghq/)
- [Configure Availability Settings](https://help.birdchime.com/en-us/article/configure-availability-settings-199dozz/)
- [How to Set a Limit for Orders](https://help.birdchime.com/en-us/article/how-to-set-a-limit-for-orders-1dkllfq/)
