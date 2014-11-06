---
layout: doc
title: Widgets
---

# Widgets

You can add functionality to your template by including different kinds of BaseKit widgets.
You can see all the available widgets in the list below.

Widgets that are included in the template differ from those added by users in that they can not be moved or deleted. Properties can be changed through the editor in the same way Zone Widgets have their values changed.

Widgets can be easily added to a template using the a Twig ```widget()``` function

{% highlight ruby %}
{% raw %}
	{{widget('extendednavigation', 'navigationheader', {"align":"center"})|raw}}
{% endraw %}
{% endhighlight %}

The above will render an extended navigation widget in place of the above function. The widget function accepts the following parameters:

* Type (string): All widget types are displayed below

* Name (string, needs to be a unique name within a layout): This is a name for this widget. If a template / page type is swapped on the page and it contains a widget with the same name, it will pick up the values associated to this widget name. (This only happens when a user has changed the values within the editor. Otherwise it will use the default values associated within the values object literal - 3rd parameter)

* Default Values (object literal): comma separated key value pairs. Examples are shown and all are defined in the respective widget documentation below

* Hide Widgets: To hide a widget by default the following code can be inserted: ```"showTplWidget":"0"``` See example of the company logo widget below:

{% highlight ruby %}
{% raw %}
	{{widget('logo', 'logo', {"defaultlogo": asset('images/logo.png'),"showTplWidget":"0"})|raw}}
{% endraw %}
{% endhighlight %}
