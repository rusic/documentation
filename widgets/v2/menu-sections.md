---
layout: widget
title: Menu Sections
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/menu-sections/
- version: Version 1.0
  url: /widgets/v1/menu-sections/
---

# Menu Sections

Version: >= 7.32. Add a Menu Sections Navigation to the Page

## Overview

**IMPORTANT: This widget will only work as expected when the menu plugin is activated on the user's account.** Works in conjunction with the [menu](/widgets/v1/menu/) widget. This widget will show a list of menu section links. When this link is clicked it will navigate to the relevant sections in the menu.

{% highlight ruby %}
{% raw %}

	{{widget('menu', 'thisunqiuewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

Currently, this widget does not have any options.
