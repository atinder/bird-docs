---
id: 7bba4727-88eb-4a7a-bf97-7217cacd0350
title: "Set Up Email Branding for Professional Customer Emails"
category: notifications-and-validations
section: customer-notifications
slug: set-up-email-branding-for-professional-customer-emails
crisp_updated_at: 1749621001000
crisp_url: https://help.birdchime.com/en-us/article/set-up-email-branding-for-professional-customer-emails-10v7eid/
description: "Set Up Email Branding for Professional Customer Emails | Bird Pickup and Delivery App for Shopify"
---

When sending customer notifications through the Bird Pickup & Delivery app using your own company email, proper email authentication is essential. Setting up **DKIM** and **Return-Path** records ensures that your emails are delivered reliably and recognized as legitimate.

## 1. Retrieve DKIM & Return-Path Details

1. **Access Bird App Notification Settings**

* In the Bird app, navigate to **Settings** → **Notifications**
* Add your company details such as email, name, logo, etc.
* Click Verify to see the **Hostname** and **Value** fields for both **DKIM** and **Return-Path**.

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

![](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/image_pbp8x7.png)

3. **Save & Wait for Propagation**

|| Note: DNS changes can take up to 48 hours to fully propagate.

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
## 5. Confirm DNS Setup via External Tools (Optional)

If the Bird app’s verification is delayed or you want additional confirmation, you can double-check your DNS records using third-party tools:

* **DKIM Record Check with DKIMCore:** Visit the DKIM Core DKIM lookup tool [dkimcore.org](https://dkimcore.org/tools/keycheck.html#:~:text=Selector%3A%20Domain%20name%3A). Enter your DKIM selector (the prefix from the Hostname, for example **`20250319153404pm`**) and your domain (e.g. **`yourdomain.com`**), then initiate the lookup. The tool will fetch the TXT record; verify that it matches the DKIM value from the Bird app and is formatted correctly.
* **Return-Path CNAME Check with WhatsMyDNS:** Go to WhatsMyDNS.net and use its global DNS propagation checker [whatsmydns.net](https://www.whatsmydns.net/#CNAME/). In the search box, enter your Return-Path subdomain (e.g. **`pm-bounces.yourdomain.com`**), select **CNAME** as the record type, and start the search. The results should show the CNAME resolving to the correct target (for example, **`pm.mtasv.net`**) across multiple servers worldwide, indicating the record is propagated correctly.

|| **Note:** If both external tools confirm that your DKIM and Return-Path records are published correctly **but** the Bird app dashboard still does not show them as verified, contact [Birdchime Support](https://go.crisp.chat/chat/embed/?website_id=9a669714-af96-4a70-bf92-ea0b2ade5ab0) for further assistance.

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

**Related Document:** [Ready for pickup and dispatch email notification](https://help.birdchime.com/en-us/article/ready-for-pickup-and-dispatch-email-notification-8o1c1h/)
