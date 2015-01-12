---
layout: widget
title: Blog Search
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/blog-search/
- version: Version 1.0
  url: /widgets/v1/blog-search/
---

# Blog Post

Version: >= 7.32. Add a Blog Search Widget to the Page

## Overview

**IMPORTANT**: This widget will only work with the Blog plugin is enabled on the user's account. This search the blog posts associated to the users site.

{% highlight django %}
{% raw %}

  {{widget('blogsearch', 'thisuniquewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

  <!-- v2 widget HTML output -->

{% endraw %}
{% endhighlight %}

## Widget Options

Currently, this widget does not have any options.
