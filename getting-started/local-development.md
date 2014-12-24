---
layout: doc
title: Local Development
---

# Local Template Emulator

The local template emulator provides you with a way to view your BaseKit templates in your local development environment. This lets you continue to use your preferred design and development workflow. When you make changes to your local template files, they can be previewed instantly in the emulator.

### Requirements

* Apache Web Server
* PHP

In order to use the local Template Development Kit (TDK), you will need to have a local web server installed, preferrably Apache. If you don't already have a local web server, you may want to check out tools such as [WampServer](http://www.wampserver.com/en/) for Windows or [MAMP](http://www.mamp.info/en/index.html) for Mac OSX. These will get you up and running with a web server very quickly, and they provide GUI tools for basic configuration tasks.

### Download Now!
* [Download Latest Stable Version](http://goo.gl/DqoGhX) (stable)
* [Bleeding Edge](http://goo.gl/TFEiBm) (development)
* [Download Specific Version](https://github.com/basekit-templates/tdk/wiki)

Firstly, you will need to [download the TDK (Template Development Kit)](https://github.com/basekit-templates/tdk/wiki). If your web server is configured correctly, and the files are in the right place, then you should see the emulator when you navigate to your virtual host in a browser.

### Don't Forget

Place all the TDK files into the root directory of your local web server. Also the entry point to the TDK is in the ```/public``` directory. Please point MAMP/WAMP to this directory.

The emulator comes with the [Sycamore](https://github.com/basekit-templates/sycamore) and [BaseKit Baseplate](https://github.com/basekit-templates/basekit-baseplate) templates included, and you should see the screen below - featuring the [Sycamore](https://github.com/basekit-templates/sycamore) template - when you first navigate to the emulator in your browser.

![The emulator in the browser](/assets/content/emulator.png)

Any changes you make to the files within the ```templates/sycamore``` directory can be previewed instantly by clicking the Render button at the top-right of the screen. This includes changes to dynamic files such as ```.twig``` and ```.less```, which will be processed and displayed in realtime.

![Emulator controls](/assets/content/emulator-control.png)

The controls at the top of the emulator can be used to switch between templates, layouts and colour swatches.

Layouts can added to the template. The only required one is ```default.twig```. The rest will be selectable via the editor when a user creates a page. This layout will be used for that page. Read more about [Page Types](/templating/page-types/).

Adding the following [Page Types](/templating/page-types/) to your [metadata.json](/templating/metadata/) file, the template engine would look for a matching [Twig](/templating/twig/) file. If the twig file is not found, it will always fallback to ```default.twig```.

{% highlight json %}
{
  "pageTypes": ["home", "about", "contact"],
}
{% endhighlight %}

Expects the files in your template to look like this:

* ```about.twig``` (optional)
* ```contact.twig``` (optional)
* ```default.twig``` (required)
* ```templateName.jpg``` (required)
* ```home.twig``` (optional)
* ```metadata.json``` (required)
* ```stylesheet.less``` (required)

### Creating Templates

The emulator root directory contains a templates directory. You can create your own templates in this directory, and the emulator will be able to preview them. The emulator will scan the the ```/templates``` and display it in the templates dropdown.

### Troubleshooting

In the course of developing a template, you will encounter errors in your ```.twig``` and ```.less``` files. These errors will be displayed to you when your template is rendered. You will see an alert displaying the error message, and where possible the file and line are also provided. The corresponding error or exception will also be output to the console, and this may be useful to investigate the problem further.

As with any template system, there are a lot of rules you need to follow in order to create a valid BaseKit template. Please read the documentation here carefully, and experiment with the [Baseplate template](http://github.com/basekit-templates/basekit-baseplate) included before you attempt to create your own template from scratch.

We've taken steps to prevent browser caching when using the emulator. However, you may encounter problems with rendering changes that you are making to files. If this happens then try to clear your browser's cache.

If you have any major difficulties in getting started, or if you just want to ask a question about templates, please e-mail [template-team@basekit.com](mailto:template-team@basekit.com) and we'll do our best to help.
