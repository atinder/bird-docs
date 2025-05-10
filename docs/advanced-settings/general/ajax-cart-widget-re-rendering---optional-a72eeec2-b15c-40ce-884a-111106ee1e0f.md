---
id: a72eeec2-b15c-40ce-884a-111106ee1e0f
title: "Ajax Cart Widget Re-Rendering - Optional"
category: advanced-settings
section: general
slug: ajax-cart-widget-re-rendering---optional
crisp_updated_at: 1730790185000
crisp_url: https://help.birdchime.com/en-us/article/ajax-cart-widget-re-rendering-optional-1dkfbf0/
description: ""
---

If your cart contents are re-rendered because of Ajax Cart or some similar reason, this guide will help you.

You need to add the following line of code in your Ajax loaded page where the widget is displayed.

```javascript
<div id=”birdchime-slots-box” data-watch-ajax=”#element-to-watch” ></div>
```
*Watching a parent element having id as an element-to-watch*

### **Explanation**

Here **id=birdchime-slots-box** is fixed and should not change.

However, you can change **element-to-watch** based on your website’s structure and functionality.

**element-to-watch** is the id of the **parent element** which doesn’t change with the Ajax or dynamic content.

Similarly, you can watch for an element having class as **element-to-watch** using the following snippet.

```javascript
<div id=”birdchime-slots-box” data-watch-ajax=”.element-to-watch” ></div>
```
*Watching a parent element having class as element-to-watch*
