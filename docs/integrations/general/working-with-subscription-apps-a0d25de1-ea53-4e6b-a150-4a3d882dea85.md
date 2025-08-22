---
id: a0d25de1-ea53-4e6b-a150-4a3d882dea85
title: "How to Integrate Bird Pickup & Delivery with Subscription Apps"
category: integrations
section: general
slug: working-with-subscription-apps
crisp_updated_at: 1740460338000
crisp_url: https://help.birdchime.com/en-us/article/working-with-subscription-apps-1sze0s7/
description: "Complete guide to integrate Bird Pickup & Delivery with subscription apps. Configure CCS rates, automate recurring orders with Shopify Flow, and manage delivery scheduling for subscription businesses."
---

**Integrate Bird Pickup & Delivery with your subscription apps to automate delivery scheduling for recurring orders.**

This guide shows you how to configure rates and manage recurring orders when using subscription apps with Bird Pickup & Delivery.

## Configure Rates for Subscription Apps

**Set up shipping rates that work seamlessly with your subscription app's recurring orders.**

You have two options for configuring rates:

### Option 1: Configure Rates via Shopify Admin

Use Shopify's built-in rate configuration for subscription orders. This approach works with basic rules but offers limited automation for recurring orders.

### Option 2: Use Bird App with CCS (Recommended)

Enable Carrier-Calculated Shipping (CCS) in the Bird app for dynamic rate calculation.

**Important:** CCS automatically converts weights from kilograms to grams. Adjust your weight-based rates accordingly. This ensures accurate delivery calculations for all subscription order weights.

CCS support varies by Shopify plan:

| Plan | CCS Support |
|------|-------------|
| Starter | No |
| Basic | No |
| Shopify | Can be enabled |
| Advanced | Yes |
| Plus | Yes |

#### Enable CCS in Bird App

1. Open your Bird app dashboard
2. Navigate to **Rates**
3. Enable **Carrier-Calculated Shipping** under **Rates Engine**
4. Configure your rate rules

![Bird app dashboard showing CCS configuration option under Rates setting](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_4fungg.png)

## Manage Recurring Order Tags and Metafields

**Automate recurring order management using Shopify Flow integration.**

Use Shopify Flow to automatically update tags and metafields for subscription orders, including delivery date tracking for recurring orders. For an example of adding delivery dates to order metafields, see [Attach Delivery Date to Order Metafields Using Shopify Flow](https://help.birdchime.com/en-us/article/attach-delivery-date-in-order-metafield-using-shopify-flow-14l1gfc/).


## Related Articles

- [Sync recurring orders with Google Calendar](https://help.birdchime.com/en-us/article/how-to-track-orders-on-google-calendar-7p8ous/)
