---
layout: widget
title: Spacer
versions:
- version: Version 2.0
  url: /widgets/v2/spacer/
- version: Version 1.0
  url: /widgets/v1/spacer/
---

# Spacer

Add a spacer widget to your template.

## Overview

You can add a spacer widget to your template. This widget can be used to insert a separation between widgets.

To include a spacer widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

	{{widget('space', 'thisunqiuewidgetname', {'height': '50'})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```height```: The height of the spacer. Possible values: from ```10``` to ```250```
