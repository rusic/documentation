---
layout: doc
title: Authentication
---

# Authentication

All spaces allow users to sign in and out using Twitter and Facebook.

In order for a user to interact with a space, ie. creating ideas, liking and commenting, they must be signed in. This allows Rusic to associate interactions with a persisted genuine user and to post messages to their respective social network (with their permission).

## Signing in

To allow users to sign in, simply create links to the following URLS:

{% highlight bash %}
{% raw %}
http://you.rusic.com/auth/twitter
http://you.rusic.com/auth/facebook
{% endraw %}
{% endhighlight %}

This might look like this in Liquid HTML:

{% highlight html %}
{% raw %}
Sign in with <a href="/auth/twitter">twitter</a> or <a href="/auth/facebook">facebook</a> to add your own idea.
{% endraw %}
{% endhighlight %}

Following these links will redirect the user to the provider's OAuth pages(s). Once signed in and authorised, they will be signed in to Rusic and redirected back to the page they started from.

## Signing out

To sign out, simply create a link to the following URL:

`http://you.rusic.com/auth/signout`

This might look like this in Liquid HTML:

{% highlight html %}
{% raw %}
You are logged in, <a href="/auth/signout">sign out</a>.
{% endraw %}
{% endhighlight %}

## Determining if a user is logged in

To see if a user if logged in, inspect the presence of a `current_user` object:

{% highlight liquid %}
{% raw %}
{% if current_user %}
  Hey, {{current_user.nickname}}!
{% else %}
  Hey stranger!
{% endif %}
{% endraw %}
{% endhighlight %}
