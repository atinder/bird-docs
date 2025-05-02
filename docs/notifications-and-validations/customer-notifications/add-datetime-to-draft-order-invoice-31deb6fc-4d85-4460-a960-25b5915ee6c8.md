---
id: 31deb6fc-4d85-4460-a960-25b5915ee6c8
title: "Add Date/Time to draft order Invoice"
category: notifications-and-validations
section: customer-notifications
slug: add-datetime-to-draft-order-invoice
crisp_updated_at: 1737999840000
---

# How to add the date/time on the draft order invoice?

1. Navigate to **Bird App Settings > Order Management**.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-11441_1gz7zgy.png)

2. Scroll down to **Order notes and fulfillment** enable the below checkbox. This will add the date/time to the order note.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12012_16buo4o.png)

3. You should see the order note being updated as following after enabling the above option.

![Attached Note](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-27-at-51724_17806r2.png)

4. Go to **Shopify Settings > Notifications > Customer Notifications** .

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12233_97x97x.png)

5. Click **Draft order invoice** .

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-12819_enoi0u.png)

6. And then click on Edit code

![Click on Edit code](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-27-at-53745_1mpqqog.png)

7. Copy the following code.

```html
{% raw %}
{% assign note_array = note | split: " | " %}
{% for note_item in note_array %}
   <p class="notes-details">{{ note_item }}</p>
{% endfor %}
{% endraw %}
```

8. We recommend you to paste this code above order summery table.

![click on save](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-27-at-53835_izqcsq.png)

9. If you want to change the labels in the note, enable **Bird App Settings > Order Management > Order notes and fulfillment > Translate order notes** .

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-13205_jd9si1.png)

10. Go to **Bird App Settings > Text & Languages > Edit**

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-13526_13li13b.png)

11. And update the following labels as needed.

![](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2025-01-05-at-13741_1ib1c8e.png)

12. Then you can go to your draft order edit page in Shopify admin. You should see the following when you try sending the invoice.

![Click on send Invoice](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/screenshot-2023-06-28-at-83853_14gw6vz.png)
