---
layout: widget
title: Ecommerce Categories
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/ecommerce-categories/
- version: Version 1.0
  url: /widgets/v1/ecommerce-categories/
---

# Ecommerce Categories

Version: >= 7.32. Add an ecommerce categories to the page.

## Overview

**IMPORTANT: This widget will only work as expected when the ecommerce plugin is activated on the user's account**. It will add a list of blog categories to your page that will link to all posts in that category.

{% highlight django %}
{% raw %}

  {{widget('ecomcategories', 'thisuniquewidgetname', {'title': 'Categories', 'showCount', true})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__ecomcategorieslistWidget" data-name="ecomcategorieslist" class="widget  widget--zone-widget">
  <div class="bk-ecomcategorieslist  ecomcategorieslist  widget__ecomcategorieslist">
    <div class="categories-listing  widget__categories-listing">
      <ul class="categories-list  categories-listing__categories-list">
        <li class="category-item  categories-listing__category-item">
          <a class="category-link  categories-listing__category-link" href="/store?category=woman">woman</a>
        </li>
        <li class="category-item  categories-listing__category-item">
          <a class="category-link  categories-listing__category-link" href="/store?category=man">man</a>
        </li>
      </ul>
    </div>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

* ```title``` (string): This is the string that sits above the categories widget. ```categories``` (default)

* ```showCount``` (boolean): Shows the number of posts in each category. ```true``` (default) or ```false```
