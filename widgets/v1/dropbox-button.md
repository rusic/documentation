---
layout: widget
title: Dropbox Button
---

# Dropbox Button

Add a Dropbox widget to your template.

## Overview

You can add a dropbox widget to your template that will allow to add a link to a file on your dropbox account on your site.

To include a dropbox widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('dropbox', 'thisunqiuewidgetname', {'align': 'left', 'showFileName': false})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```showFileName``` Show the file name. true or false(default)

* ```align```: The widget alignment. You can set it to:

  * widget-align-left
  * widget-align-center
  * widget-align-right
