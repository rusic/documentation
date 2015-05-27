---
layout: doc
title: Object and variable reference
---

# Object and variable reference

All the objects and variable data you can access within your Rusic theme are listed here.

## Global variables

`notice` - a successful action result message, eg.

{% highlight html %}
{% raw %}
<p class="success">
  Your idea has been created!
</p>
{% endraw %}
{% endhighlight %}

`error` - an unsuccessful action result message, eg.

{% highlight html %}
{% raw %}
<p class="error">
  Sorry, you can only like an idea once!
</p>
{% endraw %}
{% endhighlight %}

`current_user` - the currently logged in [User](#user)

`env` - the current environment, returns `production` on the live site and `development` locally

`content_for_header` - essential JavaScript tags for Rusic, always put in the `<head>` before any of your own JavaScript files.

## Space

These variables are always accessible in every template.

`space.title` - the name of this space

`space.slug` - a URL safe version of the `title`, eg. `example-space`

`space.summary` - Summary of the bucket

`space.interactive` - Boolean flag indicating if all users can add ideas. `true` if all users can, `false` if not

`space.ideas` - A list of all active [Idea](#idea) objects for this space

`space.user` - the [User](#user) who created the space

Usage example

{% highlight html %}
{% raw %}
<h1>{{space.title}}</h1>
<h2>{{space.summary}}</h2>
<p>
  All users {% if space.interactive %}can{% else %}cannot{% endif %}
  add ideas to this bucket
</p>
{% if space.ideas != empty %}
  <ol>
    {% for idea in space.ideas %}
      <li>{{idea.title}}</li>
    {% endfor %}
  </ol>
{% endif %}
{% endraw %}
{% endhighlight %}

## Idea

`idea.title` - the idea's title

`idea.content` - the main content of the idea, could be [markdown](/theming/ideas/835#markdown) formatted

`idea.images` - a list of [Image](#image) objects for this idea

`idea.likes` - the number of likes this idea has

`idea.like_link` - the HTTP POST URL for liking this idea

`idea.user` - the [User](#user) who created this idea

`idea.comments` - a list of all [Comment](#comment) objects for this idea

`idea.interested_users` - a list of [User](#user) objects for all users who have liked or commented on this idea

Usage example

{% highlight html %}
{% raw %}
{% if space.ideas != empty %}
  <ol>
    {% for idea in space.ideas %}
      <li>
        <h3>{{idea.title}}</h3>
        <div class="image">
          <img src="{{idea.images.first.url}}" alt="Image for {{idea.title}}" />
        </div>
        {{idea.content | markdown}}
        <p>Created by {{idea.user.name}}</p>
        <p>
          <a href="{{idea.like_link}}" data-method="post">Like this idea</a>
        </p>
      </li>
    {% endfor %}
  </ol>
{% endif %}
{% endraw %}
{% endhighlight %}

## Image

`image.pico` - URL to image, exactly 16x16 pixels

`image.icon` - URL to image, exactly 32x32 pixels

`image.thumb` - URL to image, no greater than 100x100 pixels

`image.square` - URL to image, exactly 120x120 pixels

`image.compact` - URL to image, no greater than 160x160 pixels

`image.medium` - URL to image, no greater than 300x300 pixels

`image.medium_square` - URL to image, exactly 300x300 pixels

`image.medium_large` - URL to image, no greater than 480x480 pixels

`image.grande` - URL to image, no greater than 600x600 pixels

`image.large` - URL to image, no greater than 800x800 pixels

`image.massive` - URL to image, no greater than 1024x1024 pixels

Usage example

{% highlight html %}
{% raw %}
<a href="{{image.large}}">
  <img src="{{image.square}}" alt="{{idea.title}}" />
</a>
{% endraw %}
{% endhighlight %}

## Comment

`comment.body` - the submitted comment text, could be [markdown](/theming/ideas/835#markdown) formatted

`comment.user` - the [User](#user) who created the comment

`comment.created_at` - the date and time the comment was created, see [date](/theming/ideas/835#date) to format this.

Usage example

{% highlight html %}
{% raw %}
{% if idea.comments != empty %}
  <ul>
    {% for comment in idea.comments %}
      <li>
        {{comment.user.name}} said: {{comment.body | markdown}}
        on {{comment.created_at | date: "%b %m %Y"}}
      </li>
    {% endfor %}
  <ul>
  <form action="{{idea.permalink}}/comments" method="post" charset="utf-8">
    <p>
      <label for="comment_body">Comment</label>
      <textarea id="comment_body" name="comment[body]"></textarea>
    </p>
    <p>
      <input type="submit" name="submit" value="Post comment" />
    </p>
  </form>
{% endif %}
{% endraw %}
{% endhighlight %}

## User

`user.provider` - the social provider the user registered with (eg. twitter or facebook)

`user.nickname` - The user's name (from the social provider)

`user.image_url` - user's image URL from the social provider

`user.profile_url` - URL to the user's personal social page

Usage example

{% highlight html %}
{% raw %}
<p>
  <a href="{{user.profile_url}}" title="Profile of {{user.nickname}} on {{user.provider}}">
    <img src="{{user.image_url}}" alt="Photo of {{user.nickname}}" />
  </a>
  {{user.nickname}} (on {{user.provider}})
</p>
{% endraw %}
{% endhighlight %}
