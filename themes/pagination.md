---
layout: doc
title: Pagination
---

# Pagination

You can paginate any collection of Liquid objects, such as `space.ideas` or `idea.comments` using the `paginate` block.

{% highlight html %}
{% raw %}
{% paginate space.ideas by 10 %}
{% endraw %}
{% endhighlight %}

This will paginate the Ideas in `space.ideas` into pages of 10 ideas per page

To then access the ideas for the current page, call `pagination.collection`, eg:

{% highlight html %}
{% raw %}
{% for idea in pagination.collection %}
  <li>{{idea.title}}</li>
{% endfor %}
{% endraw %}
{% endhighlight %}

As a full example:

{% highlight html %}
{% raw %}
{% paginate space.ideas by 10 %}
  <ul>
  {% for idea in pagination.collection %}
    <li>{{idea.title}}</li>
  {% endfor %}
  </ul>
{% endpaginate %}
{% endraw %}
{% endhighlight %}

## Pagination meta information

You can access useful stats about the paginated objects with the following methods:

* `current_page` - the number of the page you are currently on
* `previous_page` - the number of the previous page, or `nil` if there is not a previous page (eg. you are on page 1)
* `next_page` - the number of the next page, or `nil` if there is not a next page (eg. you are on the last page)
* `total_entries` - the total number of objects in the collection, across all pages
* `total_pages` - the number of pages the collection is split in to
* `per_page` - the number of objects to display on each page

You can use the methods above on the `pagination` object, eg:

{% highlight html %}
{% raw %}
{% if pagination.next_page %}
{% endraw %}
{% endhighlight %}

## Moving between pages

Use the methods above to build your own set of page links or use the `default_pagination` filter on the `pagination` object to render a complete full set of pagination links, eg:

{% highlight html %}
{% raw %}
{{ pagination | default_pagination }}
{% endraw %}
{% endhighlight %}

This will render HTML that looks similar to this:

{% highlight html %}
{% raw %}
<div class="pagination ">
  <span class="disabled prev_page">previous</span>
  <span class="current">1</span>
  <a href="/example-space?page=2">2</a>
  <a href="/example-space?page=2" class="next_page">next</a>
</div>
{% endraw %}
{% endhighlight %}
