---
id: 09719ebc-e308-4231-a7fa-ac64526d3347
title: "Product Override"
category: calendar-and-time-configuration
section: global-settings
slug: product-override
crisp_updated_at: 1743074012000
---

### Setting Different Lead/Available Times for Specific Products

By default, the **Preparation Time** setting applies a single lead time to all products (e.g., 1 day). However, if certain products require different lead times, you can use the **Schedule Override** option in the **Product Override** feature.

### Example

If a smaller cake takes 1 day to prepare, but a larger cake requires 2 days, you can configure separate lead times for these products using the product override feature.

Additionally, you can refine availability by:

* **Blockout Dates**: Prevent orders on certain dates.
* **Available Dates**: Specify dates when a product can be ordered.

 ${frame}[ Schedule Override: Product Based Availability ](https://www.loom.com/embed/31a89fe58def47c1a8addeb43a69ea69?sid=f80e0aab-95a2-4c02-bdde-e0242fced43c) 

1. Go to Bird App Settings --> Product Override

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/product-override-menu-selectio_8u66uj.png)

2. Then click on "Add Override"

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-02-03-174518_171gcbk.png)

3. Select Override Applicability such as Global, or particular delivery method or location(for Multi-location)

4. Enter the product SKUs or Tags

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/tagsku_1ddhb54.png)

* Select the option **Same Lead Time for All Days (Mon to Sun)** or **Customize Lead Time by Day** according to your requirements.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-083621_1itz2la.png)

* Set the lead time in days/hours/minutes according to your requirements.

* Set the maximum available days if you want customers to order ahead of time.

5. **Product Based Availability** :
* **Available Dates** : make the tagged product exclusively available for selected dates.
* **Blockout Dates** : block the tagged product for selected dates.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-083224_rbz3uu.png)

| **NOTES:**
| You can create multiple product overrides for different SKUs and Tags.
| If two or more override products are added to the cart together, the common calendar dates will be shown based on the combination of the overrides
| If a day(Example Monday) is disabled in the main Availability Settings it cannot be made available via Override settings.

|| Related Articles: [Hide or Show widget for certain products only](https://help.birdchime.com/en-us/article/hide-or-show-widget-for-certain-products-only-14nf3pv/?bust=1709814859482)
