---
layout: widget
title: Company Address
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/company-address/
- version: Version 1.0
  url: /widgets/v1/company-address/
---

# Company Address

Add a company address widget to your theme.

## Overview
You can add a company address widget to your theme which contains the company address in the 'manage shared contact' section. The widget can be later customised within the BaseKit Editor.

To include a company address widget in your theme you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('companyaddress', 'thisuniquewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

This widget will use the data in your 'manage shared contact' section. So you don't need to set it.
