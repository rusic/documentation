---
layout: widget
title: Blog Post
---

# Blog Post

Version: >= 7.32. Add a Blog Post to the Page

## Overview

**IMPORTANT**: This widget will only work as expected in the blogpost.twig page type. Otherwise the engine will fallback to default.twig and the blog plugin activated on the user's account.

{% highlight ruby %}
{% raw %}

	{{widget('blogpost', 'thisunqiuewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

Currently, this widget does not have any options.
