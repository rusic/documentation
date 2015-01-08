---
layout: widget
title: Ecommerce Legal
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/ecommerce-legal/
- version: Version 1.0
  url: /widgets/v1/ecommerce-legal/
---

# Ecommerce Legal

Version: >= 7.32. Add an ecommerce legal to the page.

## Overview

**IMPORTANT: This widget will only work as expected when the ecommerce plugin is activated on the user's account.**

{% highlight django %}
{% raw %}

  {{widget('ecomlegal', 'thisuniquewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

  <!-- v2 widget HTML output -->

{% endraw %}
{% endhighlight %}

## Widget Options

Currently this widget does not have any options.
