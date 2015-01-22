---
layout: widget
title: Gallery
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/gallery/
- version: Version 1.0
  url: /widgets/v1/gallery/
---

# Gallery

Add a gallery widget to your template.

## Overview

You can add a gallery widget to your template. It will use images in your album and can be later customised within the BaseKit Editor. 

To include a gallery widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

{{widget('gallery', 'thisuniquewidgetname', {'images':[{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'}]})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__galleryWidget" data-name="gallery" class="widget  widget--zone-widget">
  <div class="bk-gallery  gallery  widget__gallery">
    <ul class="gallery-list  gallery__gallery-list">
      <li class="gallery-item  gallery__gallery-item  square">
        <figure class="figure  gallery__figure" aria-haspopup="true">
          <a class="image-link  gallery__image-link" href="#" data-image-href="//placehold.it/2250x800" data-lightbox="set-" title="Test Title Goes Here" style="background-image:url('//placehold.it/2250x800');">
            <img class="image  gallery__image" src="//placehold.it/2250x800"/>
          </a>
          <figcaption class="caption  gallery__caption">
            <span class="image-title  gallery__image-title">Test Title Goes Here</span>
            <span class="image-description  gallery__image-description">This is the description for the image gallery</span>
          </figcaption>
        </figure>
      </li>
      <li class="gallery-item  gallery__gallery-item  square">
        <figure class="figure  gallery__figure" aria-haspopup="true">
          <a class="image-link  gallery__image-link" href="#" data-image-href="//placehold.it/300x100" data-lightbox="set-" title="Test Title Goes Here" style="background-image:url('//placehold.it/300x100');">
            <img class="image  gallery__image" src="//placehold.it/300x100"/>
          </a>
          <figcaption class="caption  gallery__caption">
            <span class="image-title  gallery__image-title">Test Title Goes Here</span>
            <span class="image-description  gallery__image-description">This is the description for the image gallery</span>
          </figcaption>
        </figure>
      </li>
      <li class="gallery-item  gallery__gallery-item  square">
        <figure class="figure  gallery__figure" aria-haspopup="true">
          <a class="image-link  gallery__image-link" href="#" data-image-href="//placehold.it/250x250" data-lightbox="set-" title="Test Title Goes Here" style="background-image:url('//placehold.it/250x250');">
            <img class="image  gallery__image" src="//placehold.it/250x250"/>
          </a>
          <figcaption class="caption  gallery__caption">
            <span class="image-title  gallery__image-title">Test Title Goes Here</span>
            <span class="image-description  gallery__image-description">This is the description for the image gallery</span>
          </figcaption>
        </figure>
      </li>
    </ul>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

* ```showTitle```: optional show or hide the image title. ```true``` or ```false```

* ```showDescription```: optional show or hide the image description. ```true``` or ```false```

* ```images```: optional An array of images with properties (```imageHeight```, ```imageWidth```, ```url```, ```title```, ```description```) as opposed to using an album
