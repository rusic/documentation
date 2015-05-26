---
layout: doc
title: Guest Ideas
---

# Guest Ideas

By default Rusic requires a user to be logged into one of the providers before that user can create any entries. This limitation can be lifted by enabling the `Guest ideas` mode in the settings of your campaign.

This is only currently supported in the following themes -

* Competition Theme

Theme developers can implement this by following the following code into the new entry form -

{% highlight html %}
{% raw %}
<form id="ideaNewForm" action="{{space.permalink}}/ideas" method="post">
    <!-- other form fields -->
    {% if space.guest_ideas && !current_user %}
        <input type="email" name="identity[email]" placeholder="Your e-mail">
    {% endif %}
</form>
{% endraw %}
{% endhighlight %}
