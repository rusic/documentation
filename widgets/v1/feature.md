---
layout: widget
title: Feature
versions:
- version: Version 2.0
  url: /widgets/v2/feature/
- version: Version 1.0
  url: /widgets/v1/feature/
---

# Feature

Add a Feature widget to your template

## Overview

You can add a Feature widget to your template to showcase key content on your site. You can set the focal point of the background to ensure the part of the image is always visible on the site no matter what the resolution is. The widget can be later customised within the BaseKit Editor.

To include a Feature widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('feature', 'thisunqiuewidgetname', {"header": "CREATIVE IDEAS. COMMON RESULTS.", "strapline":"GET INVOLVED TODAY. LET US BUILD YOUR FUTURE - THE PEARL WAY.", "buttonText":"Find out more today →","defaultBgImg": asset('images/feature-bg.jpg'), 'positionTopPercentage': '50','showBtn': true})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```header```: The key words for the widget.

* ```strapline```: More description for the widget. 

* ```buttonText```: The text on the button. 

* ```italic```: The Button text style. ```true``` or ```false```(default)

* ```bold```: The Button text style. ```true``` or ```false```(default)

* ```align```: The Button text style. You can set it:

  * ```justifyleft```
  * ```justifyright```
  * ```justifycenter``` (default)
  * ```justifyfull```

* ```fontSize```: The Button text style. You can set it: ```inherit``` (default), ```14```, ```16```, ```18```, ```20```, ```22```, ```24```

* ```action```: The Button link action. You can set it ```none``` (default), ```internal```, ```external```, ```email```

* ```url```: The Button link url. You can set it depends on the action:

  * if action is set ```none```, then url should be empty (default) 
  * if action is set ```internal```, then url should be an internal link to your page. e.g. ```/home```
  * if action is set ```external```, then url should be an external link, e.g. ```www.basekit.com```
  * if action is set ```email```, then url should be an email address, e.g. ```example@example.com```
  
* ```target```: It sets where to open the external url. You set it only when action is set to external:

  * if want to open the external link in the current window, set it to ```_self```
  * if want to open the external link in a new window, set it to ```_blank```

* ```defaultBgImg```: optional The widget background and if the user removes the background image it will be used as a fallback. It requires a relative url, e.g. ```asset('images/reference.png')```

* ```positionTopPercentage```: The ```background-position``` vertical position. E.g to make it centre ```50```. 

