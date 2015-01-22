---
layout: widget
title: Menu Sections
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/menu-sections/
- version: Version 1.0
  url: /widgets/v1/menu-sections/
---

# Menu Sections

Version: >= 7.32. Add a menu sections navigation to the page.

## Overview

**IMPORTANT: This widget will only work as expected when the menu plugin is activated on the user's account.** This works in conjunction with the [menu](/widgets/v1/menu/) widget. This widget will show a list of menu section links. When this link is clicked it will navigate to the relevant sections in the menu.

{% highlight django %}
{% raw %}

  {{widget('menu', 'thisuniquewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__menusectionsWidget" data-name="menusections" class="widget  widget--zone-widget">
  <div class="bk-menusections  menusections  widget__menusections">
    <nav class="menusections-body  menusections__navigation-body">
      <ul class="menusections-list  menusections__navigation-list  js-menu-section-list">
        <li class="menusections-item  menusections__menusections-item">
          <a class="menu-item-name  menusections__item-name" href="#menu-section-373">Breakfast</a>
        </li>
        <li class="menusections-item  menusections__menusections-item">
          <a class="menu-item-name  menusections__item-name" href="#menu-section-374">Lunch</a>
        </li>
      </ul>
    </nav>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

Currently this widget does not have any options.
