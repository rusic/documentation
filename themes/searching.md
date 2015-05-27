---
layout: doc
title: Searching
---

# Searching

Entries can be searching by creating a simple HTML form and a liquid template to display the results.

## Search form

To submit a new search, create a form with the action `{{space.permalink}}/search` and a `query` parameter containing the search query.

{% highlight html %}
{% raw %}
<form action="{{space.permalink}}/search" method="get">
    <input type="text" name="query" value="{{search.query}}" placeholder="Search entries" />
    <button type="submit" class="btn">Search</button>
</form>
{% endraw %}
{% endhighlight %}

## Displaying search results

First, define a new template named `ideas/search.html.liquid` - this will be used to display entries matching the search criteria.

It's recommended you paginate the returned results, like so:

{% highlight html %}
{% raw %}
{% paginate search.results by 10 %}
  <ul class="results">
    {% for idea in pagination.collection %}
      <li>{{ idea.title }}</li>
    {% endfor %}
  </ul>
{% endpaginate %}
{% endraw %}
{% endhighlight %}

Display meta-information is simple:

{% highlight html %}
{% raw %}
{% if search.performed? %}
  <p>
    {{ search.results_count | pluralize: 'topic' }} found for "{{ search.query }}"
  </p>
{% endif %}
{% endraw %}
{% endhighlight %}

## The search object

`search.results` - the list of entries found in the search results
`search.results_count` - the total number of matching entries found
`search.performed?` - return true if a search has been performed
`search.query` - the submitted search query
