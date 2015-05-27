---
layout: doc
title: Custom Fields
---

# Custom Fields

Consider a standard new entry form, like so

{% highlight html %}
{% raw %}
<form action="{{rusic.permalink}}/ideas" method="post">
  <p>
    <label for="idea_title">Idea title</label><br />
    <input type="text" name="idea[title]" class="title" id="idea_title" placeholder="Entry title" />
  </p>
  <p>
    <label for="idea_content">Content</label><br />
    <textarea name="idea[content]" id="idea_content"></textarea>
  </p>
  <p>
    <input type="checkbox" name="idea[should_post_to_social]" value="1" checked /> Post this entry to {{current_user.provider}}?
  </p>
  <p>
    <input type="submit" value="Submit">
  </p>
</form>
{% endraw %}
{% endhighlight %}


You can easily add any number of arbitrary named custom fields. For example, this will add a custom field called `email_address`

{% highlight html %}
{% raw %}
<p>
  <label for="idea_custom_email_address">Email address</label><br />
  <input type="text" name="idea[custom][email_address]" id="idea_custom_email_address" />
</p>
{% endraw %}
{% endhighlight %}

Once the entry is saved you can access all custom fields through the `idea.custom` liquid method, like so:

{% highlight html %}
{% raw %}
{{idea.custom.email_address}}
{% endraw %}
{% endhighlight %}
