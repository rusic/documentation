---
layout: widget
title: Logo

---

# Logo

Add a logo widget to your template

## Overview

You can add a logo widget to your template which contains the logo in the manage shared contact section. The text displayed in the widget can be later customised within the BaseKit Editor.

To include a logo widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('logo', 'thisunqiuewidgetname', {"defaultlogo": asset('images/logo.png')})|raw}}

{% endraw %}
{% endhighlight %}
