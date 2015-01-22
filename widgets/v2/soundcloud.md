---
layout: widget
title: SoundCloud
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/soundcloud/
- version: Version 1.0
  url: /widgets/v1/soundcloud/
---

# SoundCloud

Version: >= 7.32. Add a SoundCloud widget to your template.

## Overview

You can add a SoundCloud widget to your template. The audio can be later customised within the BaseKit Editor.

To include a SoundCloud widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('soundcloud', 'thisuniquewidgetname', {'iframeCode': '<iframe width="100%" height="200" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/151493449&amp;auto_play=false"></iframe>'})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__soundcloudWidget" data-name="soundcloud" class="widget  widget--zone-widget">
  <div class="bk-soundcloud  soundcloud  widget__soundcloud">
    <div class="embed-wrap  embed-wrap--audio  soundcloud__embed-wrap">
      <iframe width="100" height="200" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/151493449&amp;auto_play=false"></iframe>
    </div>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```iframeCode```: The embed SoundCloud code.
  ```<iframe width="100%" height="200" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/151493449&amp;auto_play=false"></iframe>```
