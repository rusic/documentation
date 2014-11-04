---
layout: widget
title: Tweet Button 1.0
versions:
- version: Version 2.0
  url: /widgets/v2/tweet-button/
- version: Version 1.0
  url: /widgets/v1/tweet-button/
---

# Tweet Button

## Widget Options

You can add a tweet widget to your template that will allow to tweet the page you are currently in.
To include a tweet widget in your template you will need to add the following line:

You can change the following options for the widget:

* linkText: The text that will appear in the tweet button.

* align: The widget alignment. You can set it to:
  * widget-align-left, widget-align-center, widget-align-right
  
## Twig Snippet

{% highlight ruby %}
{% raw %}

	{{widget('tweet', 'thisunqiuewidgetname', {'linkText': 'Tweet'})|raw}}

{% endraw %}
{% endhighlight %}

## HTML Structure

{% highlight html %}

<!-- element: widget | variation: zone widget -->
<div class="widget  widget--zone-widget">

  <!-- element: tweet button | parent block: widget -->
  <div class="tweet-button  widget__tweet-button">
	
    <!-- element: button, icon | variation: twitter | parent block: tweet button -->
    <a href="https://twitter.com/share?text=&amp;url=" class="button  icon  icon--twitter  tweet-button__button" target="_blank">Tweet</a>
	
  </div>

</div>

{% endhighlight %}

## LESS Styles

{% highlight css %}

// ----------------
// 4. #Tweet Button
// ----------------

{% endhighlight %}
