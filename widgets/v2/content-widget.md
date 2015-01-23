---
layout: widget
title: Content Widget
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/content-widget/
- version: Version 1.0
  url: /widgets/v1/content-widget/
---

# Content Widget

The content widget is used to write blocks of formatted text using basic text editor controls. This is mainly used to display paragraphs of text or headings. Within the Editor there are options to drag a paragraph or a h1 heading, these are both based upon the Content Widget but with provide the user with a paragraph or heading as a starting point.

## Examples

Adding a Content Widget to your template means the user can add text content the area you have defined.

### Basic Usage

{% highlight django %}
{% raw %}

  {{widget('content', 'sidebarcontent', {})|raw}}

{% endraw %}
{% endhighlight %}

The above example has an ID of ```sidebarcontent```, which will mean any Content Widget with this ID will use the same content. Providing a different ID for another Content Widget will allow the user to edit them independently.

### Example Usage

{% highlight django %}
{% raw %}

{{widget('content', 'sidebarcontent', {
  content: '<p>Lorem ipsum dolor sit amet...</p>'
})|raw}}

{% endraw %}
{% endhighlight %}

Resulting HTML:

{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__ContentWidget" data-name="content" class="widget  widget--zone-widget">
  <div class="bk-content  content  widget__content  js-text-content">
    <p>Lorem ipsum dolor sit amet...</p>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

These are additional options that can be set by the template developer. However they can all be change by the user, these will be the initial settings of the Widget:

* ```content```: The content on the widget

* ```lines```: The amount of content that can be seen upon first viewing, by default it shows all content.
  * ```all```: Shows all the content, this is the default.
  * ```one```: Shows only the first paragraph with a "more..." button to toggle the rest of the content.
  * ```two```: Shows the first two paragraphs with a "more..." button to toggle the rest of the content.
