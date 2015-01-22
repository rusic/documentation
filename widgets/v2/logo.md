---
layout: widget
title: Logo
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/logo/
- version: Version 1.0
  url: /widgets/v1/logo/
---

# Logo

Add a logo widget to your template.

## Overview

You can add a logo widget to your template which contains the logo in the manage shared contact section. The text displayed in the widget can be later customised within the BaseKit Editor.

To include a logo widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('logo', 'thisuniquewidgetname', {"defaultlogo": asset('images/logo.png')})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__template-widgets__logo-logo" class="widget  widget--template-widget" data-widget-type="logo">
  <div class="bk-logo  logo  widget__logo">
    <a href="/" class="logo-link  logo__logo-link">
      <img class="logo-image  logo__logo-image" alt="Business Name" title="Business Name" src="/images/default-logo.png">
    </a>
  </div>
</div>

{% endraw %}
{% endhighlight %}
