---
layout: widget
title: LinkedIn Profile
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/linkedin-profile/
- version: Version 1.0
  url: /widgets/v1/linkedin-profile/
---

# LinkedIn Profile

Add a LinkedIn personal profile widget to your template.

## Overview

You can add a LinkedIn personal profile widget to your template. This profile URL can be changed later in the BaseKit Editor.

To include a LinkedIn profile widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('linkedinprofile', 'thisuniquewidgetname', {'linkedin': 'http://www.linkedin.com/in/johndoe'})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__template-widgets__linkedinprofile-thisuniquewidgetname" class="widget  widget--template-widget" data-widget-type="linkedinprofile">
  <div class="bk-linkedinprofile  linkedinprofile  widget__linkedinprofile">
    <div class="embed-wrap  embed-wrap--linkedin  linkedinprofile__embed-wrap">
      ...
    </div>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```linkedin```: The LinkedIn profile public URL. For example: ```http://www.linkedin.com/in/johndoe```

