---
layout: widget
title: Ecommerce Product
versions:
- version: Version 2.0
  url: /widgets/v2/ecommerce-products/
- version: Version 1.0
  url: /widgets/v1/ecommerce-products/
---

# Ecommerce Product

Version: >= 7.32. Add an Ecommerce Product to the Page

## Overview

**IMPORTANT: This widget will only work as expected when the ecommerce plugin is activated on the user's account. It is best to place this ```ecomproduct.twig``` if you require it in a different layout. Otherwise the engine will fallback to ```default.twig```.**

{% highlight ruby %}
{% raw %}

	{{widget('ecomproduct', 'thisunqiuewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

Currently, this widget does not have any options.
