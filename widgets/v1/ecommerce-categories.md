---
layout: widget
title: Ecommerce Categories
---

# Ecommerce Categories

Version: >= 7.32. Add an Ecommerce Categories to the Page

## Overview

**IMPORTANT: This widget will only work as expected when the ecommerce plugin is activated on the user's account**. It will add a list of blog categories to your page that will link to all posts in that category.

{% highlight ruby %}
{% raw %}

	{{widget('ecomcategories', 'thisunqiuewidgetname', {'title': 'Categories', 'showCount', true})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

* ```title``` (string): This is the string that sits above the categories widget. ```categories``` (default)

* ```showCount``` (boolean): Shows the number of posts in each category. ```true``` (default) or ```false```