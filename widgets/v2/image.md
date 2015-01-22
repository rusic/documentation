---
layout: widget
title: Image
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/image/
- version: Version 1.0
  url: /widgets/v1/image/
---

# Image

Add an image widget to your template.

## Overview

You can add an image widget to your template. The widget can be later customised within the BaseKit Editor. 

To include an image widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('image', 'thisuniquewidgetname', { 'src': asset('furcoat/images/my-image.jpg'), 'title': 'my image', 'alt': 'my image', 'fileName': 'my-image.jpg', 'fileSize': '58kb', 'imageSize': '440 x 660', 'imageWidth': '90px'})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__ImageWidget" data-name="image" class="widget  widget--zone-widget">
  <div class="bk-image imagewidget  widget__imagewidget">
    <figure class="figure  imagewidget__figure">
      <a  href="#" data-image-href="//placehold.it/250x250" rel="lightbox"  title="This is the image title" class="image-link  imagewidget__image-link">
        <img class="image  imagewidget__image " src="//placehold.it/250x250" alt="" title="This is the image title" data-filename="" data-filesize="" data-imagesize=""  />
      </a>
      <figcaption class="caption  imagewidget__caption">
        <span class="image-title  imagewidget__image-title">This is the image title</span>
        <span class="image-description  imagewidget__image-description">This is the image description</span>
      </figcaption>
    </figure>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```src```: A relative url of the image, e.g. ```asset('furcoat/images/my-image.jpg')```

* ```title``` (optional): The image title

* ```alt``` (optional): The image alt attribute

* ```fileName```: The image file name, e.g. ```my-image.jpg```

* ```fileSize```: The image file size 

* ```imageSize```: The image size, e.g. ```440 x 660```

* ```imageWidth```: The image width you want to display on the site, e.g. ```90px```
