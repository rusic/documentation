---
layout: widget
title: Disqus Comments
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/disqus-comments/
- version: Version 1.0
  url: /widgets/v1/disqus-comments/
---

# Disqus Comments

Version: >= 7.32. Add a Disqus widget to your website. Disqus usage documentation can be found here: [http://disqus.com/websites/](http://disqus.com/websites/){:target="_blank"}

This widget is managed by a third party. BaseKit wraps the Disqus comments widget, and enables you to add it to your website.

{% highlight django %}
{% raw %}

  {{widget('disqus', 'pagecomments', {})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__disqusWidget" data-name="disqus" class="widget  widget--zone-widget">
  <div class="bk-disqus  disqus  widget__disqus">
    <div class="embed-wrap  embed-wrap  disqus__embed-wrap">
      <div id="disqus_thread"></div>
      <script>
        ...
      </script>
      <noscript>
        <p>Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a></p>
      </noscript>
    </div>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

Currently, this widget does not have any options.
