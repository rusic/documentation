---
layout: widget
title: Gallery
---

# Gallery

Add a Gallery widget to your template

## Overview

You can add a Gallery widget to your template. It will use images in your album and can be later customised within the BaseKit Editor. 

To include a Gallery widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

{{widget('gallery', 'thisunqiuewidgetname', {'images':[{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'}]})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

* ```showTitle```: optional Show or hide the image title. ```true``` or ```false```

* ```showDescription```: optional Show or hide the image description. ```true``` or ```false```

* ```images```: optional An array of images with properties (```imageHeight```, ```imageWidth```, ```url```, ```title```, ```description```) as opposed to using an album
