---
layout: widget
title: LinkedIn Company Profile

---

# LinkedIn Company Profile

Add a Linkedin company profile widget to your template.

## Overview

You can add a LinkedIn company profile widget to your template. This profile URL can be changed later in the BaseKit Editor.

To include a LinkedIn profile widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('linkedincompanyprofile', 'thisunqiuewidgetname', {'source': 'companyname', 'companyName': 'BaseKit'})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```source```: The source type. Possible values: ```companyName``` or ```id```

* ```companyName```: If the type is set to ```companyName``` you have to set the company name to allow the widget to retrieve the profile

* ```linkedinID```: If the type is set to ```id``` you have to set the linkedin ID to allow the widget to retrieve the profile
