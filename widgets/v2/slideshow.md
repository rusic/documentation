---
layout: widget
title: Slideshow
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/slideshow/
- version: Version 1.0
  url: /widgets/v1/slideshow/
---

# Slideshow

Add a slideshow widget to your template.

## Overview

You can add a slideshow widget to your template. This widget will display an image gallery slideshow.

To include a slideshow widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('responsiveslideshow', 'thisuniquewidgetname', {'duration':'3', 'transSpeed': '1000', 'transType': 'fade', 'showButtons': true, 'showBullets': false, 'allowPause': true, 'allowLoop': true, 'images':[{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'},{'imageHeight':'350', 'imageWidth':'300', 'url':'http://placehold.it/350x300', 'title':'test title', 'description': 'test desc'}]})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__responsiveslideshowWidget" data-name="responsiveslideshow" class="widget  widget--zone-widget">
  <div class="bk-responsiveslideshow  responsiveslideshow  widget__responsiveslideshow">
    <ul class="slides-list  responsiveslideshow__slides-list  cover">
      <li data-ref="0" class="slide-item  responsiveslideshow__slide-item  responsiveslideshow-image-item  js-responsiveslideshow-image-item  current">
        <figure class="figure  responsiveslideshow__figure  " style="background-image:url('http://placehold.it/2250x800');">
          <img class="image  responsiveslideshow__image  js-responsiveslideshow-image" src="//placehold.it/2250x800" alt="Test Title Goes Here">
          <figcaption class="caption  responsiveslideshow__caption">
            <span class="image-title  responsiveslideshow__image-title">Test Title Goes Here</span>
            <span class="image-description  responsiveslideshow__image-description">This is the description for the image gallery</span>
          </figcaption>
        </figure>
      </li>
      <li data-ref="1" class="slide-item  responsiveslideshow__slide-item  responsiveslideshow-image-item  js-responsiveslideshow-image-item">
        <figure class="figure  responsiveslideshow__figure  " style="background-image:url('http://placehold.it/300x100');">
          <img class="image  responsiveslideshow__image  js-responsiveslideshow-image" src="//placehold.it/300x100" alt="Test Title Goes Here">
          <figcaption class="caption  responsiveslideshow__caption">
            <span class="image-title  responsiveslideshow__image-title">Test Title Goes Here</span>
            <span class="image-description  responsiveslideshow__image-description">This is the description for the image gallery</span>
          </figcaption>
        </figure>
      </li>
      <li data-ref="2" class="slide-item  responsiveslideshow__slide-item  responsiveslideshow-image-item  js-responsiveslideshow-image-item">
        <figure class="figure  responsiveslideshow__figure  " style="background-image:url('http://placehold.it/250x250');">
          <img class="image  responsiveslideshow__image  js-responsiveslideshow-image" src="//placehold.it/250x250" alt="Test Title Goes Here">
          <figcaption class="caption  responsiveslideshow__caption">
            <span class="image-title  responsiveslideshow__image-title">Test Title Goes Here</span>
            <span class="image-description  responsiveslideshow__image-description">This is the description for the image gallery</span>
          </figcaption>
        </figure>
      </li>
    </ul>
    <nav class="slide-navigation  responsiveslideshow__slide-navigation">
      <button class="previous-button  button  icon  icon--previous  responsiveslideshow__previous-button js-btn-prev js-slide-ctrl" data-ref="5">
        <span class="control-text  responsiveslideshow__control-text">Previous</span>
      </button>
      <button class="pause-toggle  button  icon  icon--pause  responsiveslideshow__pause-toggle js-btn-play">
        <span class="control-text  responsiveslideshow__control-text">Pause</span>
      </button>
      <button class="next-button  button  icon  icon--next  responsiveslideshow__next-button js-btn-next js-slide-ctrl" data-ref="5">
        <span class="control-text  responsiveslideshow__control-text">Next</span>
      </button>
    </nav>
    <nav class="slide-pagination  responsiveslideshow__slide-pagination">
      <ul class="pagination-list  responsiveslideshow__pagination-list">
        <li data-ref="0" class="pagination-item  responsiveslideshow__pagination-item js-dot js-slide-ctrl  selected">
          <button class="button  button--pagination  responsiveslideshow__button">1</button>
        </li>
        <li data-ref="1" class="pagination-item  responsiveslideshow__pagination-item js-dot js-slide-ctrl ">
          <button class="button  button--pagination  responsiveslideshow__button">2</button>
        </li>
        <li data-ref="2" class="pagination-item  responsiveslideshow__pagination-item js-dot js-slide-ctrl ">
          <button class="button  button--pagination  responsiveslideshow__button">3</button>
        </li>
      </ul>
    </nav>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```duration```: The slideshow duration in seconds

* ```transSpeed```: The speed of the transition in milliseconds

* ```transType```: The type of transition. Possible values:

  * ```dissolve```
  * ```fade```
  * ```none```

* ```showButtons```: Show the buttons to go to the next/prev image. Possible values: ```true``` or ```false```

* ```showBullets```: Show the bullets to go to a different image. Possible values: ```true``` or ```false```

* ```allowPause```: Allow to pause the slideshow. Possible values: ```true``` or ```false```

* ```allowLoop```: Make the slideshow repeat in a loop. Possible values: ```true``` or ```false```

* ```crop```: Crop the images in the slideshow to fit, or not. Possible values: ```true``` or ```false```

* ```images```: An array of images with properties (```imageHeight```, ```imageWidth```, ```url```, ```title```, ```description```) as opposed to using an album
