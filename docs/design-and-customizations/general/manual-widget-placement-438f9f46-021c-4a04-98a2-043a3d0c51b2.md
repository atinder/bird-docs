---
id: 438f9f46-021c-4a04-98a2-043a3d0c51b2
title: "Manual Widget Placement"
category: design-and-customizations
section: general
slug: manual-widget-placement
crisp_updated_at: 1737568028000
crisp_url: https://help.birdchime.com/en-us/article/manual-widget-placement-1iq0zmb/
description: ""
---

|| This is somewhat technical. Feel free to ask us for help if you get stuck

This document will help you change the placement of the widget in your theme if it is not automatically placed properly.

We are using the Google Chrome browser in this document.
---

1. **Go to your shopping cart**

* Choose the element around which you want to place the widget.

* On the chosen element, right-click and then click inspect element.

![Inspect element](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1lhxlax.png)
---

2. **Copy CSS Selector**

* Hover over the target element. It should be highlighted as shown below.

* Now you can copy the class of that element and use that as a CSS selector as shown below

![Copy the CSS selector](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_e4n3e5.png)
---

3. ** Navigate to Bird App Settings > Widget Placement**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/widgetplacementmenu_1uyni50.png)
---

4. **Enter the Placement CSS selector**

* In case of class enter **.cart__footer**

* in case of id enter **#cart_footer**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/cssclass_bg703r.png)

5. **Adjust widget position**

* Optionally you can use this option to adjust the placement relative to the target element configured above.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-135501_98gtw.png)

6. **End result for the above configuration**

![Widget placed correctly](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_10tdhna.png)
