---
id: a5d1d216-f187-4797-a9c8-545de01a601c
title: "Common reasons for rate errors on checkout page"
category: rates
section: common
slug: common-reasons-for-rate-errors-on-checkout-page
crisp_updated_at: 1724333668000
crisp_url: https://help.birdchime.com/en-us/article/common-reasons-for-rate-errors-on-checkout-page-1iekz2h/
description: ""
---

### If you are facing the following error message in the checkout. This document will help you resolve it.

![Error message during checkout](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1mqhgsj.png)

1.  [Common Reasons](#1-common-reasons)
*  [Location not enabled in product Edit page inventory section.](#3-1-location-not-enabled-in-product-edit-page-inventory-section)
* [Product is out of stock on a particular location](#3-2-product-is-out-of-stock-on-a-particular-location)
* [Location is not enabled to Fulfill online orders](#3-3-location-is-not-enabled-to-fulfill-online-orders)
* [Store location address of one of the locations in Shopify admin is not validated.](#3-4-store-location-address-of-one-of-the-locations-in-shopify-admin-is-not-validated)
* [Rates can also be reordered or hidden by third apps using Shopify functions](#3-5-rates-can-also-be-reordered-or-hidden-by-third-party-apps-using-shopify-functions)

2. [Built in Local Delivery rates specific](#1-built-in-local-delivery-rates-specific)
* [The rates defined do not cover the area of the customer.](#3-1-the-rates-defined-do-not-cover-the-area-of-the-customer)
* [Cart total is lesser than the minimum order value.](#3-2-cart-total-is-lesser-than-the-minimum-order-value)

3. [Built in Store Pickup specific](#1-built-in-store-pickup-rates-specific)
* [Location is not enabled for pickup.](#3-1-location-is-not-enabled-for-pickup)
* [There are no pickup locations available.](#3-2-there-are-no-pickup-locations-available)

4. [Shipping/Delivery rates specific](#1-built-in-store-pickup-rates-specific)
* [If configured by Bird App](#3-1-if-configured-by-bird-app-deliveryshipping-address-not-covered-by-rules-configured)
* [If configured by Shopify Admin Shipping rates](#3-2-if-configured-by-shopify-admin-shipping-rates-shipping-address-not-covered-by-rules-configured)


# Common Reasons

### 1. Location not enabled in product Edit page inventory section.

![One location not stocked](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-07-at-10565_1sqpjr4.png)

This can be fixed by navigating to **Shopify Admin -> Products -> Select Product -> Inventory -> Edit Locations**

### 2. Product is out of stock on a particular location

![Product out of stock](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1iqowmq.png)
This can be fixed by **adding stock** to the out of stock location.

### 3. Location is not enabled to fulfil online orders.

![Enable fulfill online orders](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-08-at-12372_13ghji7.png)
 
### 4. Store location address of one of the locations in Shopify admin is not validated.

![Location address not validated](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-07-at-11034_1rmr5e2.png)
This can be fixed by entering a **valid address** in Shopify location and saving it.

### 5. Rates can also be reordered or hidden by third party apps using Shopify functions.

![Deactivate other third part delivery customization](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_60fi43.png)
This can be fixed in **Shopify admin -> Settings -> Shipping & Delivery -> Delivery Customization**

# Built in Local Delivery rates specific
### 1. The rates defined do not cover the area of the customer.

![Zip or postal code not covered](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_pnpdwc.png)

![Delivery radius not covered](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1j2nhg2.png)

### 2. Cart total is lesser than the minimum order value.

![Minimum order value](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1dkdp8b.png)

# Built in Store Pickup rates specific
### 1. Location is not enabled for pickup. 
|| Refer this only if you are getting the second error (on the right side) mentioned at the top.

![Location not enabled for built in pickup.](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-03-08-at-12355_21gzfr.png)

### 2. There are no pickup locations available.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_kus95a.png)

One of the reasons for this error is that the Street address is missing, making the location unverified on Shopify's end!

**Solution:**

* Edit the Location address, Please navigate to Shopify's Settings > Locations > Created Location
* Edit the Street address and then try to save the location!

# Shipping/Delivery rates specific
### 1. **If configured by Bird App**: Delivery/Shipping address not covered by rules configured

![Bird App Conditions don't pass](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_145ykz6.png)

### 2. **If configured by Shopify Admin Shipping rates**:  Shipping address not covered by rules configured


![Shopify configured rates](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_14ituua.png)
