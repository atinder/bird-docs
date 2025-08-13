---
id: 052280d5-d990-46f8-9731-10c28b87d988
title: "Set Up Postal Code-Based Local Delivery Rates"
category: rates
section: via-bird-app
slug: configure-local-delivery-rates-based-on-postal-code
crisp_updated_at: 1750741944000
crisp_url: https://help.birdchime.com/en-us/article/configure-local-delivery-rates-based-on-postal-code-16da0ew/
description: "Set up different delivery rates for different areas of your city using postal codes with Bird Pickup & Delivery"
---

**You'll create multiple delivery zones with different rates based on postal codes to optimize your local delivery pricing.**

This setup allows you to charge different rates for nearby versus far-away areas within your city. Each zone can have unique delivery rates, minimum order values, and schedules.

${frame}[Step-by-step tutorial showing how to configure postal code-based delivery rates in the Bird app dashboard](https://www.youtube.com/embed/MIVH967eXYk)

## How Postal Code-Based Rates Work

**Bird Pickup & Delivery** creates virtual zones within your main store location. Each zone serves specific postal codes with customized rates and requirements.

**Example Setup:**
- **Main Store Location:** $10 delivery rate
- **West Zone (Nearby):** $20 delivery rate, $50 minimum order
- **East Zone (Far-away):** $30 delivery rate, $50 minimum order

The app automatically displays the correct rate based on the customer's postal code during checkout.

## Create Delivery Zones

### Step 1: Access Location Settings

1. Go to **Bird App Settings**
2. Click **[I have different schedules for different locations](https://help.birdchime.com/en-us/article/i-have-different-schedule-for-different-store-locations-1f6j2p0/)**

![Bird app settings page with location configuration options highlighted](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/configurelocation_jronww.png)

### Step 2: Duplicate Your Main Location

1. Click **Configure Location**
2. Select your main store location
3. Click **Duplicate Location** (scroll to find this option)

![Shows the duplicate location button in the location configuration interface](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/duplicate-location_a1vp6a.png)

|| **Important:** The duplicated location becomes a subzone that shares inventory with your main location. This zone exists only in Bird Pickup & Delivery and doesn't create a new Shopify location.

### Step 3: Configure Zone Details

1. Rename the duplicated location (e.g., "East Zone," "West Zone," "Nearby," "Far-away")
2. Add any address for the zone
3. Click **Save**

You now have one main location and two zones. Configure nearby postal codes for one zone and far-away postal codes for the other.

### Step 4: Set Postal Codes for Each Zone

1. **Enable Local Delivery** for each zone
2. Click **Edit Settings**
3. Go to **Local Delivery Pincodes**
4. Paste _unique postal codes_ for each zone

![Shows the local delivery settings page with postal code configuration options](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/localdelivery-edit-settings_n55trt.png)

![Shows the postal code input field where merchants can paste their zone-specific postal codes](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/addpostalcodes_qgceq2.png)

### Step 5: Set Minimum Order Values

Configure minimum order value validation for each zone below the postal code settings.

![Shows the minimum order value configuration section](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/minorder_15gtd2p.png)

## Configure Zone-Specific Rates

### Step 6: Set Up Delivery Rates

1. Go to **Bird App → Rates**
2. Click **Local Delivery**
3. Select **I have different rates for different store locations**
4. Configure rates for each zone

![Shows the rates configuration page where merchants can set different delivery rates for each location/zone](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-03-25-091609_3904dw.png)

**That's it!** Your postal code-based delivery rates are now active. Test the setup using different postal codes to verify the correct rates display.

## Optional: Postal Code Validation

**Prevent customers from changing postal codes during checkout** to ensure they receive the correct zone-based rates.

1. Go to **Bird Rates → Validation Settings** (scroll down)
2. Enable **Revalidate delivery location postal code in checkout**

![Shows the validation settings section with the postal code revalidation option highlighted](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/validatepostalcodecheckout_g32w6v.png)

For detailed postal code validation setup including implementing postal code checker header, see [How to Validate Local Delivery Postal Code in Widget](https://help.birdchime.com/en-us/article/how-to-validate-local-delivery-postal-code-in-widget-1fi7kha/).

## How It Works for Customers

The app automatically displays the appropriate delivery rate based on the postal code entered. This process is seamless and doesn't affect the normal checkout flow.

## FAQs

##### Can I create more than two zones?
Yes, you can duplicate your main location multiple times to create as many zones as needed for your delivery area based on your subscribed plan.

##### Do the zones share inventory?
Yes, all zones share inventory with your main store location. The zones are virtual and don't create separate Shopify locations.

##### Can I set different schedules for each zone?
Absolutely! Each zone can have its own delivery schedule, rates, and minimum order requirements.

##### What happens if a postal code isn't assigned to any zone?
Customers with unassigned postal codes will see the main location's delivery rate and availability.

For more general questions, see our main [FAQs page](https://help.birdchime.com/en-us/category/faqs-1ygmxau/).

## Related Articles

- [Configure Delivery Rates](https://help.birdchime.com/en-us/article/configure-delivery-rates-1xbrder/)
- [How to Validate Local Delivery Postal Code in Widget](https://help.birdchime.com/en-us/article/how-to-validate-local-delivery-postal-code-in-widget-1fi7kha/)
- [I Have Different Schedules for Different Store Locations](https://help.birdchime.com/en-us/article/i-have-different-schedule-for-different-store-locations-1f6j2p0/)
- [How to Add a Minimum Order Value Validation Message](https://help.birdchime.com/en-us/article/how-to-add-a-minimum-order-value-validation-message-uihm3w/)
