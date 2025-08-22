---
id: 7bba4727-88eb-4a7a-bf97-7217cacd0350
title: "Set Up Email Branding and Authentication for Professional Customer Emails"
category: notifications-and-validations
section: customer-notifications
slug: set-up-email-branding-for-professional-customer-emails
crisp_updated_at: 1749621001000
crisp_url: https://help.birdchime.com/en-us/article/set-up-email-branding-for-professional-customer-emails-10v7eid/
description: "Learn how to configure DKIM and Return-Path DNS records to authenticate your customer emails, improve deliverability, and maintain professional branding in the Bird Pickup and Delivery app"
---

**Set up professional email branding and authentication to ensure your customer emails reach inboxes reliably and maintain your brand reputation.**

Professional email branding goes beyond just visual design—it includes technical authentication that prevents your customer notifications from being marked as spam. DKIM (DomainKeys Identified Mail) and Return-Path authentication are essential DNS records that verify your emails come from your legitimate domain, protecting your brand reputation and ensuring reliable delivery. Bird Pickup & Delivery requires these DNS records for professional email delivery.

## Get Your Authentication Details

**Navigate to Bird App Settings** to retrieve your unique DNS configuration.

1. Go to **Settings** → **Notifications** in the Bird app
2. Add your company email, name, and logo
3. Click **Verify** to see your **Hostname** and **Value** fields

![Bird app notification settings showing DKIM and Return-Path hostname and value fields for DNS configuration](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/image-58_13y4uje.png)

**Copy both the DKIM and Return-Path details** - you'll need them for your DNS provider.

## Configure DKIM Record

**Add a TXT record to your DNS** to authenticate your email signatures.

1. Log into your DNS provider's management panel
2. Create a new **TXT record** with these settings:
   - **Hostname**: Paste the DKIM hostname from Bird App
   - **Type**: TXT
   - **Value**: Paste the DKIM key value from Bird App

![DNS provider interface showing TXT record configuration with hostname and value fields populated](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/image_pbp8x7.png)

3. Save the record and wait for DNS propagation (up to 48 hours)

## Configure Return-Path Record

**Add a CNAME record** to handle email bounces properly.

1. Create a new **CNAME record** in your DNS:
   - **Host/Name**: Paste the Return-Path hostname from Bird App
   - **Type**: CNAME
   - **Value**: Paste the Return-Path value from Bird App

[Placeholder Screenshot: DNS provider interface showing CNAME record configuration for Return-Path setup]

2. Save and wait for propagation

## Verify Your Setup

**Return to Bird App** to confirm your DNS configuration is working.

1. Go back to **Settings** → **Notifications**
2. Click **Verify** to check your records

![Successful verification screen showing confirmed DKIM and Return-Path authentication status](https://storage.crisp.chat/users/helpdesk/website/-/c/a/8/2/ca826b447482b000/image-20_1pru7ty.png)

**That's it!** Your emails are now authenticated and ready to send.

## Troubleshooting DNS Verification

**Use external tools** if Bird App verification is delayed.

- **DKIM Check**: Visit [dkimcore.org](https://dkimcore.org/tools/keycheck.html) and enter your selector and domain
- **Return-Path Check**: Use [whatsmydns.net](https://www.whatsmydns.net/#CNAME/) to verify CNAME propagation

**Contact Birdchime Support** if external tools confirm correct records. Bird App may still show unverified status during propagation.

## Additional Resources

- [DNS Configuration Guide for Common Providers](https://postmarkapp.com/support/article/1090-resources-for-adding-dkim-and-return-path-records-to-dns-for-common-hosts-and-dns-providers)
- [DMARC Best Practices](https://postmarkapp.com/guides/dmarc)
- [DKIM Verification Troubleshooting](https://postmarkapp.com/support/article/1095-my-dkim-record-wont-verify)
- [Return-Path Verification Help](https://postmarkapp.com/support/article/1197-my-return-path-record-wont-verify)

## Related Articles

- [Ready for pickup and dispatch email notification](https://help.birdchime.com/en-us/article/ready-for-pickup-and-dispatch-email-notification-8o1c1h/)
- [Add datetime to draft order invoice](https://help.birdchime.com/en-us/article/add-datetime-to-draft-order-invoice-pmdpbi/)
