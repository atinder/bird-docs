# Bird Documentation

Welcome to the Bird documentation. This site contains comprehensive guides and documentation for the Bird app.

## Documentation Sections

### Notifications and validations

#### Validations

* Abandoned Cart and Checkout Validation
* How to add a minimum order value validation message?
* How to validate Local Delivery postal code in widget?

#### General

* Add Date/Time in packaging slip or invoice.
* How to Verify DKIM and Return-Path_Nitin

#### Customer notifications

* Add Date/Time to draft order Invoice
* Ready for pickup and dispatch email notification

#### Staff notifications

* Enable Internal Staff Notifications via BirdApp

### Calendar and time configuration

#### Global settings

* Configure Availability Settings
* Configure Order Preparation Times
* How to set a limit for orders?
* Product Override

### Rates

#### Via bird app

* Configure Delivery Rates
* Configure Pickup Rates

#### General

* Discounts for Shipping, Delivery, or Pickup_Nitin

#### Common

* Rates control

### Uncategorized

#### General

* Configure Local Delivery Rates based on Postal Code
* Configure Pickup Rates_Nitin
* Product Override_Nitin (Title has to be thought through)
* Rates Control_draft
* Sorting and Filtering Orders_Nitin

### Order management

#### General

* Create draft order with date and time.
* How to change the date and time after the order has been placed?
* How to sort orders by date?

### Shopify settings

#### General

* Disable Shopify's built-in store pickup
* Modify checkout page language

### Popular use cases

#### General

* Enable Same Day/Next Day delivery for specific products
* Hide or Show widget for certain products only

### Design and customizations

#### General

* How to customize the widget look?
* How to enable or disable the app in themes
* How to show link below the widget?
* Remove the Ship and Pickup selection on the checkout page

### Integrations

#### General

* How to Integrate the Bird app with Shopify POS
* How to Integrate the Bird app with Shopify POS_Lokesh
* How to track orders on google calendar?
* Integrating Bird App Widget in Your Shopify Headless Theme
* Working with subscription apps

### Advanced settings

#### General

* Setup checkout locales files
* Widget Reinitialize

### Shipping

#### General

* Shipping

This is a preview version. For the official documentation, please visit help.birdchime.com

## Documentation Structure

All documentation is stored in the `docs/` directory. When changes are made to documentation:
1. The changes can be previewed in pull requests
2. Once merged to main, they are automatically synced to Crisp

## Preview System

Documentation previews are automatically generated for pull requests:
- Each PR gets its own preview URL: `https://atinder.github.io/bird-docs/pr-preview/{PR_NUMBER}/`
- Previews are updated automatically when changes are pushed to the PR
- The preview URL is posted as a comment in the PR

## Development

### Local Setup

1. Clone the repository
```bash
git clone https://github.com/atinder/bird-docs.git
cd bird-docs
```

2. Install dependencies
```bash
bundle install
```

3. Run locally
```bash
bundle exec jekyll serve
```

### Workflow

1. Create a new branch for your changes
2. Make changes to files in the `docs/` directory
3. Create a pull request
4. Preview your changes using the automatically generated preview URL
5. Once approved and merged, changes will be synced to Crisp 