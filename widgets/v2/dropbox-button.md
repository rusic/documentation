---
layout: widget
title: Dropbox Button
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/dropbox-button/
- version: Version 1.0
  url: /widgets/v1/dropbox-button/
---

# Dropbox Button

Add a Dropbox widget to your template.

## Overview

You can add a Dropbox widget to your template that will allow you to add a link to a file on your dropbox account on your site.

To include a Dropbox widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('dropbox', 'thisuniquewidgetname', {'align': 'left', 'showFileName': false})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__dropboxWidget" data-name="dropbox" class="widget  widget--zone-widget">
  <div class="bk-dropbox  dropbox  widget__dropbox">
    <button class="button  icon  icon--dropbox  dropbox__button  js-link-btn" data-link="">Download</button>
    <span class="label  dropbox__label">test.file</span>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```showFileName``` Show the file name. ```true``` or ```false``` (default)

* ```align```: The widget alignment. You can set it to:

  * widget-align-left
  * widget-align-center
  * widget-align-right
