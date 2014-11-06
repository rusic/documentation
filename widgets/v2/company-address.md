---
layout: widget
title: Company Address
---

# Company Address

Add a company address widget to your template

## Overview
You can add a company address widget to your template which contains the company address in the manage shared contact section. The widget can be later customized within the BaseKit Editor.

To include a company address widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('companyaddress', 'thisunqiuewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

This widget will use the shared contact data in your manage section. So you don't need to set it.
