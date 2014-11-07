---
layout: widget
title: Ecommerce Confirmation
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/ecommerce-confirmation/
- version: Version 1.0
  url: /widgets/v1/ecommerce-confirmation/
---

# Ecommerce Confirmation

Version: >= 7.32. This widget displays the user's payment confirmation text from the Ecommerce Plugin.

## Overview

**IMPORTANT: This widget will only work as expected when the ecommerce plugin is activated on the user's account. It's best to place this widget in ```ecomorderconf.twig``` as this page type is used by the ecommerce plugin engine to redirect the user to after successful payment has gone through.**

{% highlight django %}
{% raw %}

	{{widget('ecomconfirmation', 'thisunqiuewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

Currently, this widget does not have any options.
