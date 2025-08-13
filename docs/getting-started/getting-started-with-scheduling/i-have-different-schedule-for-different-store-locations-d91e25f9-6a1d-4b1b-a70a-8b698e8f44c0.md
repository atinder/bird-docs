---
id: d91e25f9-6a1d-4b1b-a70a-8b698e8f44c0
title: "I have different schedule for different store locations"
category: getting-started
section: getting-started-with-scheduling
slug: i-have-different-schedule-for-different-store-locations
crisp_updated_at: 1750153171000
crisp_url: https://help.birdchime.com/en-us/article/i-have-different-schedule-for-different-store-locations-1f6j2p0/
description: "Configure unique delivery and pickup schedules for each store location in Bird App. Step-by-step setup guide for multi-location stores."
---

# I have different schedule for different store locations

Use this guide if your locations operate on different days or hours. This allows you to set unique schedules for each store location, ensuring accurate availability and delivery times. For unified scheduling across all locations, see [I have same schedule for all store locations](https://help.birdchime.com/en-us/article/i-have-same-schedule-for-all-store-locations-13ukhrg/).

![Screenshot showing the Settings view with the schedule mode checkboxes](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-072952_4c3tzq.png)

---

## Step 1: Choose Your Schedule Mode

1. In the Bird App dashboard, go to **Settings**.
2. At the top of the Settings page, select **I have different schedule for different store locations** by clicking the corresponding checkbox. (See screenshot above.)
3. Click on **Configure locations** to begin setup.

![Screenshot showing the Configure locations button](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-073119_1kmhqj3.png)

*Once selected, you'll be able to configure unique schedules for each store location.*

---

## Step 2: Configure a Specific Location

**Note:** The list of locations shown here is based on the locations you have created in Shopify. To add a new location, you must first create it in your Shopify admin—new locations cannot be created directly in the Bird App.

1. From the locations list, click on the store location you want to configure.
2. You can enable either **Local Delivery**, **Store Pickup**, or both for this location.
3. Click **Edit Settings** next to each enabled method to configure its specific settings.

**Additional options:**  
- You can **delete** or **duplicate** a location in Bird App.  
  - Deleting only removes it from Bird App; it remains in Shopify.  
  - Duplicating creates a Bird App–only copy (not in Shopify) with the **same inventory as the original**. This is useful for advanced setups like postal code–based delivery zones.  
    See: [Configure Local Delivery Rates Based on Postal Code](https://help.birdchime.com/en-us/article/configure-local-delivery-rates-based-on-postal-code-16da0ew/).

![Screenshot showing the location selection screen](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-073244_1ut1y3u.png)

![Screenshot showing delivery method toggles and edit settings button](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-073445_1b95oox.png)

*You should now see your selected options enabled for this specific location.*

---

## Step 3: Configure Availability Settings

1. In the **Availability Configuration** screen, click **Edit Settings** for Local Delivery or Pickup to set your open hours and rules.
2. You can set your availability for all days or customize it day by day.

[Learn how to configure your open hours and availability settings →](https://help.birdchime.com/en-us/article/configure-availability-settings-199dozz/)

*This article is part of the Calendar and Time Configurations section.*

*Now that you've enabled and configured your schedule, customers will see location-specific delivery and pickup options.*

### Local Delivery Postal Codes (Only in Different Schedule Mode)

When you select "I have different schedule for different store locations," an additional **Local delivery pincodes** (postal codes) section appears in the Local Delivery settings. This allows you to:

- Restrict local delivery to specific postal codes for each location
- Set different delivery areas and rates per location


![Screenshot showing Local Delivery Postal Codes configuration](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/localdelivery-edit-settings_n55trt.png)

*This feature is only available when using different schedules for different locations, as it allows you to define specific delivery areas for each store.*

---

## Step 4: Set Schedule Details for That Location

For each enabled delivery method, configure these settings:

- **Preparation Time & Cut-off Time:**  
  Set how much time you need to prepare orders and the cut-off time for this location. The cut-off time determines how late in the day customers can place orders for upcoming pickup or delivery dates. Orders placed after the cut-off time will be scheduled for a later date, based on your store's rules. You can set a single value for all days or customize it for each day of the week.  
  [Learn how to configure Preparation and Cut-off Times →](https://help.birdchime.com/en-us/article/configure-order-preparation-times-1b43s8n/)

- **Blockout Dates:**  
  Mark specific dates as unavailable for pickup or delivery at this location.  
  [Learn how to block dates →](https://help.birdchime.com/en-us/article/how-to-block-dates-from-calendar-tllghq/)

- **Product Availability:**  
  Limit availability for certain products for pickup or delivery at this location, based on your business needs. More details and options are available in the linked article.  
  [Learn about Product Availability →](https://help.birdchime.com/en-us/article/block-shipping-local-delivery-pickup-using-applicable-products-1fzgo08/)

*All these settings are specific to the selected location. You'll need to configure them separately for each location.*

---

## Navigation Tips

- Each location's availability, preparation time, and blockout date settings are managed independently.
- If you ever need to switch to unified scheduling for all locations, you can do so at any time from the Settings page.
- Remember that postal code configuration is only available when using different schedules for different locations.

---

## FAQ

**Q: Can I offer delivery in some locations but not all?**  
*A: Yes. Simply enable Local Delivery only for the locations where you want to offer delivery services.*

**Q: Do I need to set up pickup and delivery separately for each store?**  
*A: Yes. For each enabled method (pickup or delivery), you'll need to configure separate settings per location to ensure accurate scheduling and availability.*

**Q: Can I copy settings from one location to another?**  
*A: Currently, each location's settings need to be configured individually to ensure proper setup for your specific business needs.*

**Q: How do I set different delivery rates for different postal codes?**  
*A: When using different schedules for different locations, you can configure unique delivery rates for each postal code area. [Learn more about configuring delivery rates →](https://help.birdchime.com/en-us/article/configure-local-delivery-rates-based-on-postal-code-16da0ew/)*
