---
layout: widget
title: Extended Navigation
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/extended-navigation/
- version: Version 1.0
  url: /widgets/v1/extended-navigation/
---

# Extended Navigation

Add an extended navigation widget to your template.

## Overview

You can add an extended navigation widget to your template. This will show a navigation menu that includes folders in the page.

To include an extended navigation widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('extendednavigation', 'thisuniquewidgetname', {"align":"center"})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div class="bk-extendednavigation  extendednavigation  widget__extendednavigation">
  <button class="js-pull  navigation-toggle  icon  icon--bars  extendednavigation__navigation-toggle">Menu</button>
  <nav class="navigation-body  extendednavigation__navigation-body">
    <ul class="navigation-list  extendednavigation__navigation-list  js-menu-list  itemcount-5">
      <li id="menu-item_1" class="navigation-item  extendednavigation__navigation-item home selected">
        <a href="/" class="item-name  extendednavigation__item-name">Home</a>
      </li>
      <li id="menu-item_2" class="navigation-item  extendednavigation__navigation-item page">
        <a href="/about" class="item-name  extendednavigation__item-name">About</a>      
      </li>
      <li id="menu-item_3" class="navigation-item  extendednavigation__navigation-item page">
        <a href="/contact" class="item-name  extendednavigation__item-name">Contact</a>
      </li>
      <li id="menu-item_4" class="navigation-item  extendednavigation__navigation-item folder" aria-haspopup="true">
        <span class="item-name  item-name--parent  extendednavigation__item-name">Portfolio</span>
        <ul class="navigation-list  navigation-list--children  extendednavigation__navigation-list itemcount-3">
          <li id="menu-item_5" class="navigation-item  navigation-item--child  extendednavigation__navigation-item page">
            <a href="/portfolio/web" class="item-name  extendednavigation__item-name">Web</a>
          </li>
          <li id="menu-item_6" class="navigation-item  navigation-item--child  extendednavigation__navigation-item page">
            <a href="/portfolio/print" class="item-name  extendednavigation__item-name">Print</a>
          </li>
          <li id="menu-item_7" class="navigation-item  navigation-item--child  extendednavigation__navigation-item page">
            <a href="/portfolio/canvas" class="item-name  extendednavigation__item-name">Canvas</a>
          </li>
        </ul>
      </li>
      <li id="menu-item_8" class="navigation-item  extendednavigation__navigation-item page">
        <a href="/gallery" class="item-name  extendednavigation__item-name">Gallery</a>
      </li>
    </ul>
  </nav>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```align```: The navigation text alignment. Possible values: 

  * ```left``` (default)
  * ```right```
  * ```center```
