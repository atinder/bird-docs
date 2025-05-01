---
id: 551360bc-fa20-41ca-aae3-b4ea26b826f1
title: "Widget Reinitialize"
category: advanced-settings
section: general
slug: widget-reinitialize
crisp_updated_at: 1738055321000
---

.| This is somewhat technical. Feel free to ask us for help if you get stuck.

There could be scenarios when the widget may need to be initialized again. Example:

* Cart drawer

* Dynamically updated shopping cart ( without page reload )

1. Go to the **Bird App Settings > Widget Placement**.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/widgetplacementmenu_dw7trx.png)

2. **Try Increasing the reinitialize delay**

* This will reinitialize the widget after the configured delay amount. So that widget loads after the cart is loaded properly.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-24-141409_1avom3b.png)

3. **Watch element changes.**

* Use this option, only if the reinitialize delay doesn't fix the problem.

* Pick a parent element to watch, as shown in the screenshot below.

![Pick a watch element](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-09-27-at-51448_13iy5av.png)

4. **Enter watch CSS selector.**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-24-141511_99pwqt.png)
Only if the parent CSS selector doesn't work, try entering **document.body** in the above field.
