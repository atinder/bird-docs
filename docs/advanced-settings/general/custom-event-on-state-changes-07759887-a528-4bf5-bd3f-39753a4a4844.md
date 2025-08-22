---
id: 07759887-a528-4bf5-bd3f-39753a4a4844
title: "Listen for Widget State Changes with Custom Events"
category: advanced-settings
section: general
slug: custom-event-on-state-changes
crisp_updated_at: 1730790144000
crisp_url: https://help.birdchime.com/en-us/article/custom-event-on-state-changes-bfj6bz/
description: "Learn how to listen for the birdchime:schedule event to track customer delivery/pickup selections and access widget data for integration with other services."
---

**Listen for customer selections and trigger custom actions when delivery or pickup options change.**

[PLACEHOLDER Screenshot: Add revelant screenshots]

Custom events let you respond to customer interactions with your Bird Pickup & Delivery widget. Use them to update other page elements, track user behavior, or integrate with third-party services.

## What Are Custom Events?

Custom events fire automatically when customers:
- Change delivery methods
- Select delivery or pickup dates
- Choose time slots

These events fire in real-time as customers interact with the widget. This allows you to build custom responsive, dynamic experiences that update immediately when selections change.

## How to Implement Custom Events

### Step 1: Enable Custom Events

Custom events are not enabled by default. Contact our support team to activate this feature for your store.

### Step 2: Listen for Events

Listen for `birdchime:schedule` event to track widget state changes. Below is an example JavaScript code that listens for widget state changes and logs them to the console:

```javascript
document.addEventListener('birdchime:schedule', function({ detail }) {
  console.log('Schedule event details:', detail);
});
```

## Event Data Structure

Example of returned response with delivery method pickup, date and time selected:

```json
{
    "Delivery Method": "Pick Up",
    "Customer TimeZone": "America/Los_Angeles",
    "timestamp": "2025-08-20 12:07:42",
    "Delivery Location": "3363 Rivers Avenue , North Charleston, SC, US",
    "locationId": 100543,
    "shopifyLocationId": 83733479672,
    "Delivery Date": "Aug 23, 2025",
    "Delivery Day": "Saturday"
}
```

## Troubleshooting

### Event Not Firing?

1. **Verify activation**: Confirm custom events are enabled for your store by checking with our Support
2. **Check console**: Look for JavaScript errors in browser developer tools
3. **Widget loading**: Ensure the Bird Pickup & Delivery widget loads before your event listeners

## Related Articles

- [How to Customize the Widget Look](https://help.birdchime.com/en-us/article/how-to-customize-the-widget-look-1t5c07x/)
- [Manual Widget Placement](https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/)
- [Widget Reinitialize](https://help.birdchime.com/en-us/article/widget-reinitialize-ouobmi/)

