---
id: a0d25de1-ea53-4e6b-a150-4a3d882dea85
title: "Working with subscription apps"
category: integrations
section: general
slug: working-with-subscription-apps
crisp_updated_at: 1740460338000
crisp_url: https://help.birdchime.com/en-us/article/working-with-subscription-apps-1sze0s7/
description: ""
---

The following are the action items to take when using our app with any subscription apps.

1. Configuring rates

One option is to configure all the rates via Shopify.
If you set the rate via the Bird app, you must use CCS (carrier-calculated shipping API).

|| Note: In case the rates are created via Weight, the weights in Kgs will be converted to grams automatically when CCS is enabled so you need to convert accordingly.

You need to check if CCS is supported in your current Shopify plan.

| Starter | Basic | Shopify | Advance | Plus |
| ---- |
| No | No | Can be enabled | Yes | Yes |

If it is supported, you can use the following option in our app to utilize it.

![Bird Rates with CCS](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_4fungg.png)

2. Updating tags or meta fields for recurring orders You can utilize the Shopify Flow app to update the recurring orders and attach useful tags or even update the metafields in the order.

Writing a Shopify flow totally depends on the subscription app that you are using and your specific business requirements.

Related Articles: 

1. [Attach Delivery Date In order Metafield using Shopify Flow](https://help.birdchime.com/en-us/article/attach-delivery-date-in-order-metafield-using-shopify-flow-14l1gfc/)
2. [How to track orders on google calendar?](https://help.birdchime.com/en-us/article/how-to-track-orders-on-google-calendar-7p8ous/) – This guide helps in tracking orders on Google Calendar.
