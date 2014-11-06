---
layout: doc
title: Metadata
searchable: true
---

# Metadata

All templates must contain a ```metadata.json``` file. This file provides key information about your template to the BaseKit environments on which it is installed.

## Properties of Metadata.json

* **name** (string) Name of the template. Use only the letters of the alphabet (upper or lower case), underscores (_), and dashes (-).
* **thumbnail** (string) Filename of the thumbnail that needs to included with the template repository. The file type should be JPG. Width: 285px. Height: 410px
* **pageTypes** (array) From Version >= 7.22. The page types that are available with your template. These are linked to the Twig files within the top level directory in your repository. i.e. home would expect home.twig. Currently supported page types are: ["home, about, contact, gallery"]

## The metadata.json example file

{% highlight json %}
{
	"name": "example",
	"thumbnail": "example.png",
	"pageTypes": [
		"home", "about", "contact", "gallery"
	]
}
{% endhighlight %}

## Advanced Metadata.json

You can add more data to your metadata file to link it up to the BaseKit Editor. For example, you can add colour swatches and font swatches to a template. This means you can change colour / font swatch of the site via the editor Theme section.

[Click here](http://developers.basekit.com/advanced-metadata) to find out more about [advanced metadata.json](http://developers.basekit.com/advanced-metadata).
