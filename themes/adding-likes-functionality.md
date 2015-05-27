---
layout: doc
title: Adding likes functionality
---

# Adding likes functionality

Each idea in your space can accumulate "Likes" (you could call them "votes" or "recommendations" etc...)

A Like associates the current logged-in user with the idea referenced.

- A user can only "Like" an idea once.
- There must be a logged in `current_user` for a "Like" to work

## Standard like links

As we are *creating* a "Like" we'll use an HTTP POST request to a URL like this:

{% highlight html %}
{% raw %}
http://you.rusic.com/example-space/ideas/123/likes
{% endraw %}
{% endhighlight %}

For each idea, we've provided an easy way of generating this:

{% highlight html %}
{% raw %}
{{idea.like_link}}
{% endraw %}
{% endhighlight %}

Example in Liquid HTML:

{% highlight html %}
{% raw %}
<a href="{{idea.like_link}}">Like!</a>
{% endraw %}
{% endhighlight %}

This will not yet work because we need to make a POST, not GET request. To make this into a POST request, add `data-method` HTML5 attribute to the link, as follows:

{% highlight html %}
{% raw %}
<a href="{{idea.like_link}}" data-method="post">Like!</a>
{% endraw %}
{% endhighlight %}

NB. This relies on you including our recommended `{{content_for_header}}` Liquid tag in the `<head>` of your document.

Alternatively you could use a standard HTML `<form>` tag like this:

{% highlight html %}
{% raw %}
<form action="{{idea.like_link}}" method="post">
  <input type="submit" value="Like!" />
</form>
{% endraw %}
{% endhighlight %}

## AJAX like links

NB. The methods in this section rely on you including our recommended `{{content_for_header}}` Liquid tag in the `<head>` of your document.

If you'd rather use AJAX to create "Likes" inline, all you need to do is add a `data-remote` HTML5 attribute to your current link or form tag, eg:

{% highlight html %}
{% raw %}
<a class="like-link" href="{{idea.like_link}}" data-method="post" data-remote="true">Like!</a>
{% endraw %}
{% endhighlight %}

Or for a form:

{% highlight html %}
{% raw %}
<form class="like-link" action="{{idea.like_link}}" method="post" data-remote="true">
{% endraw %}
{% endhighlight %}

In order to handle the AJAX response you'll need to bind to the `ajax:complete` callback on the element. In jQuery this would look like:

{% highlight javascript %}
{% raw %}
$('.like-link').bind('ajax:complete', function(event, data, success, xhr) {
  var isValid = data.valid;

  if(isValid) {
    $('#likes-count').html(data.likes_count + " likes");
    $('#notice').html(data.message).show();
  } else {
    $('#error').html(data.message).show();
  }

  return false;
});
{% endraw %}
{% endhighlight %}

As you can see, the AJAX response returns a data JSON object. For a successful "Like" this looks like:

{% highlight json %}
{% raw %}
{
  valid: true,
  likes_count: 34,
  message: "Thanks you for liking this idea!"
}
{% endraw %}
{% endhighlight %}

JSON definition:

- `valid` - boolean true
- `likes_count` - integer of number of likes, 34 is an example number
- `message` - string, defined under the "Copy & text" section in the admin

If the user has already liked the idea, the JSON will look like:

{% highlight html %}
{% raw %}
{
  valid: false,
  message: "Thanks for your support, but you can only like an idea once!"
}
{% endraw %}
{% endhighlight %}

JSON definition:

- `valid` - boolean false
- `message` - string, defined under the "Copy & text" section in the admin

### AJAX response handling without data-remote

You can send and handle the AJAX likes using just jQuery (or another JS library).

Given the following like link:

{% highlight html %}
{% raw %}
<a class="like-link" href="{{idea.like_link}}">Like!</a>
{% endraw %}
{% endhighlight %}

Use an AJAX `post` to send the like:

{% highlight javascript %}
{% raw %}
var $link = $('.like-link'),
    url = $link.attr('href');

$link.post(url, {}, function(data, status, xhr) {
  var isValid = data.valid;

  if(isValid) {
    $('#likes-count').html(data.likes_count + " likes");
    $('#notice').html(data.message).show();
  } else {
    $('#error').html(data.message).show();
  }
}, 'json');
{% endraw %}
{% endhighlight %}

### Removing likes

{% highlight html %}
{% raw %}
{% if idea.liked? %}
  <a class="unlike-link" href="{{idea.like_link}}">Unlike!</a>
{% else %}
  <a class="like-link" href="{{idea.like_link}}">Like!</a>
{% end %}
{% endraw %}
{% endhighlight %}

Use an AJAX `delete` to remove the like:

{% highlight javascript %}
{% raw %}
$('.unlike-link').on('click', function(e) {
  e.preventDefault();

  var $link = $(e.target),
      url = $link.attr('href');

  $.ajax({
    url: url,
    type: 'delete',
    dataType: 'json',
    success: function(data, status, xhr) {
      $('#likes-count').html(data.likes_count + " likes");
      $('#notice').html(data.message).show();
    },
    error: function(xhr, status, err) {
      console.log('error:', xhr, status, err);
    }
  });
});
{% endraw %}
{% endhighlight %}
