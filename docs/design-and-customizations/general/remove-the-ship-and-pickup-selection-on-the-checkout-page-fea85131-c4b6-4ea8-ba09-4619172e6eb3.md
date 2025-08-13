---
id: fea85131-c4b6-4ea8-ba09-4619172e6eb3
title: "Streamline Checkout: Remove Shopify's Default Shipping and Pickup Options"
category: design-and-customizations
section: general
slug: remove-the-ship-and-pickup-selection-on-the-checkout-page
crisp_updated_at: 1740638491000
crisp_url: https://help.birdchime.com/en-us/article/remove-the-ship-and-pickup-selection-on-the-checkout-page-1c996th/
description: "Learn how to remove Shopify's default shipping and pickup options from your checkout page, ensuring customers only see your Bird Pickup & Delivery widget selections."
---

**You'll learn how to remove Shopify's default shipping and pickup options from your checkout page, ensuring customers only see delivery methods selected through your Bird Pickup & Delivery widget.**

## Overview

By default, Shopify displays both shipping and store pickup options on the checkout page. This confuses customers who have already selected delivery methods through your Bird Pickup & Delivery widget. This guide shows you how to streamline the checkout experience.

## Before Configuration

![Shows the default Shopify checkout page with both shipping and store pickup options visible](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_28m2b3.png)

## Configuration Steps

### 1. Set Up Bird App Rates

Complete the [Rates Setup](https://help.birdchime.com/en-us/article/rates-control-jjcrrp/) in your Bird App dashboard if you haven't already.

- Navigate to your Bird App dashboard
- Go to **Rates** section
- Configure delivery and pickup rates according to your business needs

### 2. Disable Shopify's Built-in Store Pickup

**Pro tip:** Using our Bird App rates setup wizard automatically disables Shopify's built-in pickup locations for you.

If pickup options still appear after configuring rates, manually disable Shopify's built-in store pickup:

1. Go to your Shopify admin
2. Navigate to **Settings** > **Shipping and delivery**
3. Under **Local pickup**, click **Manage pickup locations**
4. Remove or disable all pickup locations

See [Disable Shopify's Built-in Store Pickup](https://help.birdchime.com/en-us/article/disable-shopifys-built-in-store-pickup-w4zg1p/) for detailed instructions.

### 3. Create Bird App Pickup Rate

Ensure you have a pickup rate configured in your Bird App:

1. In your Bird App dashboard, go to **Rates**
2. Click **Add Rate** > **Pickup**
3. Configure your pickup rate settings
4. Save the configuration

For step-by-step guidance, see [Configure Pickup Rates](https://help.birdchime.com/en-us/article/configure-pickup-rates-1n7gumb/).

## After Configuration

![Shows the streamlined checkout page after configuration, with only the Bird Pickup & Delivery selection visible and no conflicting Shopify options](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1w56cdn.png)

## Expected Results

After completing these steps:

- Shopify's pickup location selection disappears from checkout
- Customers see an address form with pickup location pre-filled
- Only Bird Pickup & Delivery selections appear
- Checkout flow becomes streamlined and confusion-free

## Customize Checkout Language

To prevent customer confusion about the pre-filled pickup address, you can modify checkout page text.

See [Modify Checkout Page Language](https://help.birdchime.com/en-us/article/modify-checkout-page-language-1l5y8h7/) for instructions on customizing checkout messages.