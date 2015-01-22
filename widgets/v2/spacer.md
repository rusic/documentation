---
layout: widget
title: Spacer
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/spacer/
- version: Version 1.0
  url: /widgets/v1/spacer/
---

# Spacer

Add a spacer widget to your template.

## Overview

You can add a spacer widget to your template. This widget can be used to insert a separation between widgets.

To include a spacer widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('space', 'thisuniquewidgetname', {'height': '50'})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__template-widgets__space-space" class="widget  widget--template-widget" data-widget-type="space">
  <div class="bk-space  space  widget__space">
    <div class="spacer  space__spacer" style="height: 0px">&nbsp;</div>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```height```: The height of the spacer. Possible values: from ```10``` to ```250```
