---
id: 17255797-7f44-4ca4-b209-f90bca4fb5fb
title: "How to add Birdchime Slots box?"
category: advanced-settings
section: general
slug: how-to-add-birdchime-slots-box
crisp_updated_at: 1701695698000
crisp_url: https://help.birdchime.com/en-us/article/how-to-add-birdchime-slots-box-s7gd76/
description: ""
---

1. Select **Online Store **

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-90522_jrki48.png)

2. Now **select the theme** and click on  **...**.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-10372_2t9wl7.png)

3. Click on **Edit Code**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-10454_5hw0nl.png)

4. Search cart.liquid file ( Please note this will change according to your theme, in your case it might be cart.template.liquid, cart-drawer.liquid or main.cart.liquid etc)

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-08-22-at-10501_vshnu7.png)

5.  Now paste the following code above the checkout button or at any place according to your requirement.
```html
<div id="birdchime-slots-box"></div>
```

**Note :** We recommend to add this in main file of cart page
