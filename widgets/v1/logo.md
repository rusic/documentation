---
layout: widget
title: Logo
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/logo/
- version: Version 1.0
  url: /widgets/v1/logo/
---

# Logo

Add a logo widget to your theme.

## Overview

You can add a logo widget to your theme which contains the logo in the manage shared contact section. The text displayed in the widget can be later customised within the BaseKit Editor.

To include a logo widget in your theme you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('logo', 'thisuniquewidgetname', {"defaultlogo": asset('images/logo.png')})|raw}}

{% endraw %}
{% endhighlight %}
