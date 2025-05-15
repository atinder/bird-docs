---
id: 681248a7-c341-4a23-95da-eedde3cb909f
title: "How to Hide Express Checkout Options from Cart"
category: design-and-customizations
section: general
slug: how-to-hide-express-checkout-options-from-cart
crisp_updated_at: 1737567892000
crisp_url: https://help.birdchime.com/en-us/article/how-to-hide-express-checkout-options-from-cart-aj6pyf/
description: ""
---

The Express checkout options in the cart can bypass the Bird App Date & Time selection. This leads to orders without the date and time data.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_179y7oy.png)

Follow the steps below to hide the express checkout options in the cart and your customers can use it in the checkout.

1. Open the cart page and navigate to the express checkout buttons.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_cm96w6.png)

2. Hit the right key of your mouse or the page and click the option **Inspect**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_dzv435.png)

3. Navigate to the express/dynamic checkout buttons in the code and find the class/id of the element. The class or id is usually named using the word "dynamic".

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_12voec.png)

4. Copy the class name or id and open the **Bird App Settings > Widget Design**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/widget-design_u4wlje.png)

5. Scroll below to the Advance styling section and Paste the class or id as below

**For Class:**

```css
.dynamic-checkout__content  /* This will be the class name for your Shopify store's dynamic checkout buttons */

{
    display: none;
}
```

**For id:**

```css
#dynamic-checkout-cart   /* This will be the id name for your Shopify store's dynamic checkout buttons */

{
    display: none;
}
```

The added code will look like this.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2024-12-16-133030_13kcqas.png)

6. Final result. The express checkout options are hidden from the cart page.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_nmnqp3.png)

|| Let us know if you are not able to disable it, and we will do it from our end.
