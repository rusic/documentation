---
layout: widget
title: Ecommerce Product List
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/ecommerce-product-list/
- version: Version 1.0
  url: /widgets/v1/ecommerce-product-list/
---

# Ecommerce Product List

Version: >= 7.32. Add an Ecommerce Product List to the Page

## Overview

**IMPORTANT: This widget will only work as expected when the ecommerce plugin is activated on the user's account.**

{% highlight ruby %}
{% raw %}

	{{widget('ecomproductlist', 'thisunqiuewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```productFiltering```: (integer) Show / Hide Product Filter functionality. ```1``` (default) shows functionality within the widget or ```0``` to hide it.
