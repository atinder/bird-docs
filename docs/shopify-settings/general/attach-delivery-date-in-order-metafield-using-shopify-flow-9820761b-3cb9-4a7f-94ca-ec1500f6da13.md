---
id: 9820761b-3cb9-4a7f-94ca-ec1500f6da13
title: "Attach Delivery Date In order Metafield using Shopify Flow"
category: shopify-settings
section: general
slug: attach-delivery-date-in-order-metafield-using-shopify-flow
crisp_updated_at: 1737458950000
---

By default the app attached the delivery date to the order additional details. If you need the date to be attached in order metafield, follow the steps below.

1. Create a metafield on the order in Shopify Admin -> Settings -> Custom Data -> Order -> Add definition

![Create delivery date metafield in order](https://storage.crisp.chat/users/helpdesk/website/ca826b447482b000/image_1oumdbh.png)

2. Save the following data as a `.flow` file

```json
{% raw %}
{"__metadata":{"version":0.1},"root":{"steps":[{"step_id":"e1c7afb0-06cc-11ef-87c5-3d3abc71e1d1","step_position":[1260,1080],"config_field_values":[{"config_field_id":"condition","value":"{\"uuid\":\"87a5ed54-06cf-11ef-87c5-3d3abc71e1d1\",\"lhs\":{\"uuid\":\"87a5c641-06cf-11ef-87c5-3d3abc71e1d1\",\"parent_uuid\":\"87a5ed54-06cf-11ef-87c5-3d3abc71e1d1\",\"array_path\":{\"uuid\":\"87a5c642-06cf-11ef-87c5-3d3abc71e1d1\",\"parent_uuid\":\"87a5c641-06cf-11ef-87c5-3d3abc71e1d1\",\"value\":\"order.customAttributes\",\"comparison_value_type\":\"EnvironmentValue\"},\"array_item_key\":{\"uuid\":\"87a5c643-06cf-11ef-87c5-3d3abc71e1d1\",\"parent_uuid\":\"87a5c641-06cf-11ef-87c5-3d3abc71e1d1\",\"value\":\"customAttributes_item\",\"comparison_value_type\":\"EnvironmentValue\"},\"operation\":{\"uuid\":\"87a5ed50-06cf-11ef-87c5-3d3abc71e1d1\",\"parent_uuid\":\"87a5c641-06cf-11ef-87c5-3d3abc71e1d1\",\"lhs\":{\"uuid\":\"87a5ed51-06cf-11ef-87c5-3d3abc71e1d1\",\"parent_uuid\":\"87a5ed50-06cf-11ef-87c5-3d3abc71e1d1\",\"lhs\":{\"uuid\":\"87a5ed52-06cf-11ef-87c5-3d3abc71e1d1\",\"parent_uuid\":\"87a5ed51-06cf-11ef-87c5-3d3abc71e1d1\",\"value\":\"customAttributes_item.key\",\"comparison_value_type\":\"EnvironmentValue\",\"full_environment_path\":\"customAttributes_item.key\"},\"rhs\":{\"uuid\":\"90af01c0-06cf-11ef-87c5-3d3abc71e1d1\",\"parent_uuid\":\"87a5ed51-06cf-11ef-87c5-3d3abc71e1d1\",\"value\":\"Delivery Date\",\"comparison_value_type\":\"LiteralValue\"},\"value_type\":\"EnvironmentScalarDefinition:String\",\"operator\":\"==\",\"operation_type\":\"Comparison\"},\"operator\":\"AND\",\"operation_type\":\"LogicalExpression\"},\"operator\":\"ANY\",\"operation_type\":\"ArrayExpression\"},\"operator\":\"AND\",\"operation_type\":\"LogicalExpression\"}"}],"task_id":"shopify::flow::condition","task_version":"0.1","task_type":"CONDITION","description":"Check if Delivery Date key exists","note":null,"name":null},{"step_id":"aa59e630-06cf-11ef-87c5-3d3abc71e1d1","step_position":[1620,1080],"config_field_values":[{"config_field_id":"order_id","value":"order.id"},{"config_field_id":"namespace","value":"bird_app"},{"config_field_id":"key","value":"delivery_date"},{"config_field_id":"value","value":"{% for customAttributes_item in order.customAttributes %}\n  {% if customAttributes_item.key == 'Delivery Date' %}\n    {{ customAttributes_item.value | date: \"%Y-%m-%d\" }}\n  {% endif %}\n{% endfor %}"},{"config_field_id":"value_type","value":"date"}],"task_id":"shopify::admin::add_order_metafield","task_version":"0.1","task_type":"ACTION","description":null,"note":null,"name":null},{"step_id":"018f2f6c-d5e9-74bb-971d-438ebae90ae1","step_position":[900,1080],"config_field_values":[],"task_id":"shopify::admin::order_created","task_version":"0.1","task_type":"TRIGGER","description":null,"note":null,"name":null}],"links":[{"from_step_id":"e1c7afb0-06cc-11ef-87c5-3d3abc71e1d1","from_port_id":"true","to_step_id":"aa59e630-06cf-11ef-87c5-3d3abc71e1d1","to_port_id":"input"},{"from_step_id":"018f2f6c-d5e9-74bb-971d-438ebae90ae1","from_port_id":"output","to_step_id":"e1c7afb0-06cc-11ef-87c5-3d3abc71e1d1","to_port_id":"input"}],"patched_fields":[],"workflow_name":"Bird Update Metafield: Delivery Date"}}
{% endraw %}
```

3. Goto the Shopify Flow ( app ) -> Click Import -> Upload the following file. Update it as per your store requirements.

###### Related Document:

* [What is the _BirdChimeSlotId and how do I hide it?](https://help.birdchime.com/en-us/article/what-is-the-birdchimeslotid-and-how-do-i-hide-it-jghlmi/) – This guide helps manage order data and tags using BirdChimeSlotId.
