---
layout: widget
title: Ecommerce Checkout
---

# Ecommerce Checkout

Version: >= 7.32. Add an Ecommerce Checkout to the Page

## Overview

This widget is used to amalgamate the items, show the user a final price, collects data from the user then redirects them to the correct payment engine.

**IMPORTANT: This widget will only work as expected when placed inside a twig file called ```ecomcheckout.twig```; this twig file is automatically applied to the checkout page within the ecommerce plugin. Also the ecommerce plugin needs to be activated on the user's account.**

{% highlight ruby %}
{% raw %}

	{{widget('ecomcheckout', 'thisunqiuewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

Currently, this widget does not have any options.
