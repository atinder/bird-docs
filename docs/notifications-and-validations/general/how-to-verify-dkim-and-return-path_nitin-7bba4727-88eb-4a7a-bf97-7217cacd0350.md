---
id: 7bba4727-88eb-4a7a-bf97-7217cacd0350
title: "How to Verify DKIM and Return-Path_Nitin"
category: notifications-and-validations
section: general
slug: how-to-verify-dkim-and-return-path_nitin
crisp_updated_at: 1745934004000
---

When sending customer notifications through the Bird Pickup & Delivery app using your own company email, proper email authentication is essential. Setting up **DKIM** and **Return-Path** records ensures that your emails are delivered reliably and recognized as legitimate.

## 1. Retrieve DKIM & Return-Path Details

1. **Access Bird App Notification Settings**

* In the Bird app, navigate to **Settings** → **Notifications**
* Add your company details such as email, name, logo, etc.
* Click Verify and you will see **Hostname** and **Value** fields for both **DKIM** and **Return-Path**.

2. **Copy the Hostname & Value**
    
* **DKIM**: Usually a TXT record with a `selector._domainkey` format.
* **Return-Path**: A **CNAME** record used to handle bounces and ensure correct email routing.

![Hostname and Value](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/image-58_13y4uje.png)

## 2. Configure DKIM in Your DNS

1. **Log in to Your DNS Provider**
    
* Go to the domain’s DNS management page.

2. **Add a New TXT Record**
    
* **Host/Name**: Paste the **Hostname** you copied from Bird App(e.g., `20250319153404pm._domainkey.yourdomain.com`).
* **Type**: TXT
* **Value/Content**: Paste the DKIM key value you copied from Bird App.

3. **Save & Wait for Propagation**
    
* DNS changes can take up to 48 hours to fully propagate.

## 3. Configure Return-Path in Your DNS

1. **Add a New CNAME Record**
    
* **Host/Name**: Paste the Return-Path hostname from Bird App(e.g., `pm-bounces.yourdomain.com`).
* **Type**: CNAME
* **Value/Points to**: Paste the Return-Path value from Bird App(e.g., `pm.mtasv.net`).

2. **Save & Wait for Propagation**
    
* Again, allow time for the DNS to update.

## 4. Verify Your Records

After setting up the DNS records, return to the Bird app’s Notification settings and click **Verify** (or follow any provided instructions to confirm the setup). Verification ensures that:

* Your **DKIM** record is published and valid.
* The **Return-Path** CNAME record is correctly pointed.

![After successful verification](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/image-20_1pru7ty.png)

## Useful Help Resources

* [Resources for Adding DKIM and Return-Path Records to DNS for Common Hosts and DNS Providers](https://postmarkapp.com/support/article/1090-resources-for-adding-dkim-and-return-path-records-to-dns-for-common-hosts-and-dns-providers)
* [DMARC Guide and Best Practices](https://postmarkapp.com/guides/dmarc)
* [My DKIM Record Won’t Verify | Postmark Support Center](https://postmarkapp.com/support/article/1095-my-dkim-record-wont-verify)
* [My Return-Path Record Won't Verify | Postmark Support Center](https://postmarkapp.com/support/article/1197-my-return-path-record-wont-verify)

## Benefits of Proper Email Authentication

* **Improved Deliverability:** Authenticated emails are more likely to reach your customers’ inboxes.
* **Brand Protection:** Reduces the risk of spoofing and phishing attempts.
* **Reputation Management:** Maintains a positive sending reputation with ISPs and mail providers.

Once your DNS records have been verified, your company email will be fully authenticated to send customer notifications through the Bird Pickup & Delivery app.

Related Document: [Ready for pickup and dispatch email notification](https://help.birdchime.com/en-us/article/ready-for-pickup-and-dispatch-email-notification-8o1c1h/)
