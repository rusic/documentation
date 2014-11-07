---
layout: doc
title: Page Types
---

# Page Types

There are always different page types within a template; a home page layout is different to a contact page layout. Therefore will require different mark up. Page types are used to provide different layouts within one template.

Not only will page types use a alternative markup but when a page is created with a certain type, the zone (where users drag their content into) will be populated with page type related content. For example, a contact page type will populate the zone with a map and a contact form.

## How a user chooses a page type

A user can select a page type at the point of page creation within the editor.

![Add page lightbox](/assets/content/add-page.png)

Default Page Type
Page type layouts are defined as twig files within the template. The currently supported page types supported are:

* ```home.twig``` (optional): used to create a home page layout

* ```about.twig``` (optional): used to create an about page layout and will populate the zone with about page content.

* ```contact.twig``` (optional): used to create an contact page layout and will populate the zone with contact page content.

* ```default.twig``` (required): This is the default layout. This will always the layout used when 'blank' is selected (see lightbox image above). Also, when a template does not include a certain layout (for example contact.twig), then it will always fallback to this layout.

## Page type layouts within a template

Below is an extension of the file structure defines in the [assets](/templating/assets) section. This extension includes more twig files - highlighted in bold

{% highlight html %}
images/
- logo.png
README.md
about.twig
contact.twig
default.twig
example.jpg
home.twig
metadata.json
stylesheet.less
404.twig
{% endhighlight %}

## 404 Page

You can have a custom 404 design included in your template. Follow these steps:

* Add a 404.twig in the top level directory of your template

* Add ```404``` to the ```pageTypes``` array with in [metadata.json](/templating/metadata/)

* Upload the template to BaseKit

* Create page within the editor called ```404```. Make sure you select the 404 Page Type
