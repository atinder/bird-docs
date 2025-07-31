---
title: "Set Up Radius-Based Delivery Zones with Google Maps API"
description: "Configure address-based delivery zones where customers enter their address and get automatically assigned to the nearest store location with appropriate rates."
---

**Set up radius-based delivery zones. Customers enter their address, and Bird App automatically assigns them to the nearest store location.**

## Step 1: Get Your Google Maps API Key

**You need a Google Maps API key to enable address-based location assignment:**

1. Go to [Google Cloud Console](https://console.cloud.google.com/)
2. Create a new project or select an existing one
3. Enable the Geocoding API for your project
4. Create an API key in the Credentials section
5. Set up billing for your Google Cloud project (required for API usage)

For detailed setup instructions, follow [Google's official documentation](https://developers.google.com/maps/documentation/geocoding/get-api-key).

## Step 2: Enable Multi-Location Schedule

1. Go to **Bird App Settings**
2. Select **"I have different schedule for different store locations"**

![Shows the Bird App Settings page with the multi-location schedule option highlighted](/imgs/radius-based-1.png)

## Step 3: Configure Radius-Based Validation

1. Navigate to **Bird App Settings** > **Validations**
2. Scroll to **"Radius-based validation (Google Maps)"**
3. Click the **radio button** to enable radius-based validation

![Displays the radius-based validation section with the radio button highlighted to show users exactly where to click](/imgs/radius-based-2.png)

4. Enter your **Google Maps API Key** in the designated field
5. Click **Validate & Save**

The app validates your API key when you click "Validate & Save". If you see an error, check that your key is valid and has Places and Geocode permissions.

![Shows the completed radius-based validation configuration with the API key field filled](/imgs/radius-based-3.png)

## Step 4: Set Up Store Locations and Delivery Zones

**Create multiple locations to serve different delivery areas:**

1. Go to **Bird App Settings** > **Configure Locations**
2. Create or duplicate locations for different delivery zones
3. Rename locations to reflect zones (e.g., "Main Store", "Downtown Zone", "Extended Zone")

![Demonstrates the Configure Locations page with multiple store locations set up for different delivery zones](/imgs/radius-based-4.png)

## Step 5: Configure Radius for Each Location

**Set delivery radius for each store location:**

1. Select a location and enable **Local Delivery**
2. Click **"Edit Settings"** in the Local Delivery section
3. Scroll to **"Local delivery radius"** section
4. Set the radius for each location:

| Location | Radius |
|----------|--------|
| Main Store Location | 5km |
| Downtown Zone | 10km |
| Extended Zone | 15km |

![Shows the location settings page with the local delivery radius configuration, specifically highlighting the 5km radius setting for the Main store location](/imgs/radius-based-5.png)

## Step 6: Configure Rates for Each Location

1. Go to **Bird App** > **Rates**
2. Select **"I have different rates for different store locations or delivery zones"** under Delivery section
3. Set up rates for each location:

| Location             | Delivery Rate |
|----------------------|--------------|
| Main Store Location  | $10          |
| Downtown Zone        | $20          |
| Extended Zone        | $30          |

Each location uses the rate conditions you set for that particular location, and these rates apply to all addresses within that location's radius. The app automatically assigns customers to the nearest location within radius and applies that location's rate.

![Displays the Bird Rates page with local delivery rates configured differently for each location, showing the tiered pricing structure](/imgs/radius-based-8.png)

## How Radius-Based Validation Works

1. Customer types their address in delivery widget
2. Google Maps provides address suggestions as they type
3. Customer selects their address from dropdown
4. Bird App calculates distance to each store location
5. App assigns customer to nearest location within radius
6. App applies that location's rates and delivery schedules

![Shows the customer-facing delivery widget with Google Maps address autofill functionality and dropdown suggestions for address selection](/imgs/radius-based-6.png)

**Important behavior:**
- Bird App selects location with smallest radius if multiple locations overlap
- Each location's delivery rate applies to all addresses within that location's radius
- Customers select delivery date and time from that location's schedule
<!-- - Customers outside all delivery radii see error on the cart page but if they change the address in checkout, they can successfully checkout -->


![Customer selecting delivery date and time from the assigned location's schedule with successful location validation](/imgs/radius-based-7.png)

## Step 6: Test Your Configuration

**Verify radius-based delivery works correctly:**

1. Test with addresses at various distances from store locations
2. Verify Google Maps address autofill functionality
3. Confirm correct location assignment
4. Check proper rate application
5. Test addresses that are outside all delivery radii

![Shows the checkout page with prefilled selected location and radius-based delivery rate displayed correctly for the customer](/imgs/radius-based-9.png)

## Related Articles

- [Configure Local Delivery Rates based on Postal Code](https://help.birdchime.com/en-us/article/configure-local-delivery-rates-based-on-postal-code-16da0ew/)
- [I have Different Schedule for Different Store Locations](https://help.birdchime.com/en-us/article/i-have-different-schedule-for-different-store-locations-1f6j2p0/)
- [Configure Local Delivery Rates](https://help.birdchime.com/en-us/article/configure-delivery-rates-1xbrder/)