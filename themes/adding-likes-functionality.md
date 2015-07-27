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

{% highlight liquid %}
{% raw %}
{{ idea.like_link }}
{% endraw %}
{% endhighlight %}

Example in Liquid HTML:

{% highlight liquid %}
{% raw %}
<a href="{{idea.like_link}}" class="js-like-idea">Like!</a>
{% endraw %}
{% endhighlight %}

This will not yet work because we need to attach a 'data-idea-id' attribute to the link to identify the ideas' ID, as follows:

{% highlight liquid %}
{% raw %}
<a href="{{ idea.like_link }}" class="js-like-idea" data-idea-id="{{ idea.id }}">Like!</a>
{% endraw %}
{% endhighlight %}


## Handling the AJAX request

In Ajax, the request is sent to the url of the clicked like link, `idea.like_link`. On success, it returns data and updates the html with the data-like-count attribute that contains the ideaId of the idea that was liked. In Javascript, this would look like this:

{% highlight javascript %}
{% raw %}
$( document ).ready(function() {
  $(".js-like-idea").on("click", function(event){
    event.preventDefault();
    var ideaId = $(this).data("idea-id");
    $.ajax({
      url: $(this).attr("href"),
      type: "POST",
      dataType: "json",
      success: function(data){
        $("[data-like-count="+ideaId+"]").text(data.likes_count);
      },
      error: function(){
        alert("Something went wrong!");
      }
    });
  });
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


### Removing likes

{% highlight liquid %}
{% raw %}
{% if idea.liked? %}
  <a href="{{ idea.like_link }}" class="js-like-idea" data-idea-id="{{ idea.id }}">Like!</a>
{% else %}
  <a href="{{ idea.like_link }}" class="js-unlike-idea" data-idea-id="{{ idea.id }}">Unlike!</a>
{% endif %}
{% endraw %}
{% endhighlight %}

Use an AJAX `DELETE` to remove the like:

{% highlight javascript %}
{% raw %}
  (".js-unlike-idea").on("click", function(event){
    event.preventDefault();
    var ideaId = $(this).data("idea-id");
    $.ajax({
      url: $(this).attr("href"),
      type: "DELETE",
      dataType: "json",
      success: function(data){
        $("[data-like-count="+ideaId+"]").text(data.likes_count);
      },
      error: function(xhr, status, err) {
        alert("Something went wrong!");
      }
    });
  });
{% endraw %}
{% endhighlight %}
