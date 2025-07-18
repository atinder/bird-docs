---
id: 07759887-a528-4bf5-bd3f-39753a4a4844
title: "Custom Event on state changes"
category: advanced-settings
section: general
slug: custom-event-on-state-changes
crisp_updated_at: 1730790144000
crisp_url: https://help.birdchime.com/en-us/article/custom-event-on-state-changes-bfj6bz/
description: ""
---

App is capable of dispatching custom events which you can catch in order to perform certain action after the selections are made.

Following is the sample code to listen to the events.

```javascript
document.addEventListener('birdchime:schedule', function({ detail }) {
  console.log('event details is....', detail)
})
```

This is not enabled by default for all stores, please reach out to us to enable it for your store.
