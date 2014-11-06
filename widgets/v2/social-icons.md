---
layout: widget
title: Social Icons
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/social-icons/
- version: Version 1.0
  url: /widgets/v1/social-icons/
---

# Social Icons

Add a social icons widget to your template.

## Overview

You can add a social icons widget to your template. This widget will display icon links for the user's social media profile URLs.

To include a social icons widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('socialicons', 'thisunqiuewidgetname', {'googleplus': 'https://plus.google.com/101946323226233111530', 'linkedin':'http://www.linkedin.com/company/basekit', 'facebook': 'https://www.facebook.com/TeamBaseKit', 'twitter': 'https://twitter.com/basekit', 'youtube': 'https://www.youtube.com/user/TeamBaseKit', 'rss': 'http://blogdiseno.basekit.es/feed/'})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget. You can put the link there or put profile to use the shared profile data.

* ```googleplus```: The Google+ URL. i.e., ```https://plus.google.com/101946323226233111530``` or ```profile```

* ```linkedin```: The Linkedin URL. i.e., ```http://www.linkedin.com/company/basekit``` or ```profile```

* ```facebook```: The Facebook URL. i.e., ```https://www.facebook.com/TeamBaseKit``` or ```profile```

* ```twitter```: The Twitter URL. i.e., ```https://twitter.com/basekit``` or ```profile```

* ```youtube```: The Youtube URL. i.e., ```https://www.youtube.com/user/TeamBaseKit``` or ```profile```

* ```rss```: The RSS URL. i.e, ```http://blogdiseno.basekit.es/feed/``` or ```profile```

* ```align```: The widget alignment. You can set it to:
  * ```widget-align-left```
  * ```widget-align-center```
  * ```widget-align-right```
