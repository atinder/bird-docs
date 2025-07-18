---
id: 052280d5-d990-46f8-9731-10c28b87d988
title: "Configure Local Delivery Rates based on Postal Code"
category: uncategorized
section: general
slug: configure-local-delivery-rates-based-on-postal-code
crisp_updated_at: 1743084518000
crisp_url: https://help.birdchime.com/en-us/article/configure-local-delivery-rates-based-on-postal-code-16da0ew/
description: ""
---

### We will create rates based on postal codes, this is useful when we want to have different delivery rates for different parts of your city.

| Please watch the video tutorial then continue with the article for steps and quick links.

### Video Tutorial:
${frame}[Postal Code based rates](https://www.loom.com/embed/cfede30a353842f99bb07be98bd66ccc?sid=7ddbafb1-7f49-4f8e-bcaf-09dadbf0ba77)

###### Example:
* Main Store Location ( delivery rate $10)
* West Zone (Nearby locations delivery rate $20, min order value $50)
* East Zone (Faraway locations delivery rate $30, min order value $50)
* Dynamically show delivery rates based on the postal code selected, and configure the minimum order value for the zones, we can also have different schedules for these zones!

### Create new zones:
1. [Birdapp Settings](https://admin.shopify.com/apps/simple-on-time-delivery/settings) >  [I have different schedules for different locations.](https://help.birdchime.com/en-us/article/i-have-different-schedule-for-different-store-locations-1f6j2p0/)

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/configurelocation_jronww.png)

2. **Birdapp Settings > Configure Location > Select Location > Duplicate Location** (Scroll)

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/duplicate-location_a1vp6a.png)

3. **This duplicate**d location acts like a **subzone **to the Main Location and shares inventory with it, this zone is specific to **Birdapp and doesn't create a new location in Shopify.**
4. For duplicated location rename it to (East Zone/East Zone/Nearby/Far-away, your choice), add any address, and save.
5. We have 1 locations and 2 zones. In my case West Zone will have nearby postal codes and the East Zone can have far-away postal codes(we will configure the rates for these zones later).
6. **Enable Local Delivery > Edit settings > Local Delivery Postal codes > Paste unique postal codes accordingly for both locations**.

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/localdelivery-edit-settings_n55trt.png)
![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/addpostalcodes_qgceq2.png)

7. You will find the minimum order value validation below this.

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/minorder_15gtd2p.png)

### Rates Setup:
8. [Bird Rates](https://admin.shopify.com/apps/simple-on-time-delivery/rates) > Local Delivery > I have different rates for different locations > Set up the rates for each location.

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/screenshot-2025-03-25-091609_3904dw.png)

Optional requirements
* Postal code validation: [If you want to prevent the users from changing the postal code at checkout:](https://help.birdchime.com/en-us/article/how-to-validate-local-delivery-postal-code-in-widget-1fi7kha/#1-if-you-have-different-schedule-for-different-locations-multi-location)
* **Bird Rates > Validation Settings (scroll) > Revalidate delivery location postal code in checkout**.

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/validatepostalcodecheckout_g32w6v.png)

Once you are done with the above setup try to test this using different postal codes for rates. 

|| The app displays the rate based on the zone the postal code entered belonged to. This has no effect on the normal checkout flow of the customer.
