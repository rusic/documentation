---
layout: widget
title: Tweet
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/tweet-button/
- version: Version 1.0
  url: /widgets/v1/tweet-button/
---

# Tweet

Add a tweet widget to your template.

## Overview

You can add a tweet widget to your template that will allow to tweet the page you are currently in.

To include a tweet widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('tweet', 'thisunqiuewidgetname', {'linkText': 'Tweet'})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```linkText```: The text that will appear in the tweet button

* ```align```: The widget alignment. You can set it to: 
  * ```widget-align-left```
  * ```widget-align-center```
  * ```widget-align-right```
