---
layout: widget
title: Line
---

# Line

Add a line to your template.

## Overview

You can add a line widget to your template. This adds a line separator.

To include a line in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('line', 'thisunqiuewidgetname', {'thickness': 'inherit', 'padding': 'inherit', 'length':'inherit', 'align': 'center'})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```thickness```: The link thickness. Possible values: from ```1``` to ```10```

* ```padding```: The line padding. Possible values: from ```10``` to ```30```

* ```length```: The line length in percentage. Possible values: from ```10``` to ```100```

* ```align```: The line alignment. Possible values:

  * ```left```
  * ```center```
  * ```right```