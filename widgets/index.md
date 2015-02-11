---
layout: doc
title: Widgets
---

# Widgets

The majority of the Editor's editing capabilities come from the ability to drag, drop and edit Widgets onto site pages. As a developer you will have access to two types of widgets when developing themes, [Zone Widgets](#zone-widgets) and [Theme Widgets](#theme-widgets).

## Zone Widgets

Widgets that can be dragged into a website from the Editor is known as a **Zone Widget**. These follow the common convention of a widget, they can be dragged onto the page, moved within the page, edited, and removed.

### Defining A Zone Area

If you wish to use Zone Widgets within your theme you must define an area for them using the Twig theming language:

{% highlight django %}
{% raw %}
{{zone('main')|raw}}
{% endraw %}
{% endhighlight %}

Using the above snippet you can define an area of space in which you would like users to drag and drop widgets. This can be placed anywhere within the ```<body>``` element on any [Page Type](/theming/page-types/) you desire. However Zone Areas **can only be defined once on each page type**, defining a Zone Area twice on the same Page Type can cause unwanted results.

Below is a basic example of defining a Zone Area within a theme file, for example ```default.twig```:

{% highlight html %}
{% raw %}

<!doctype html>
<html>
  <head>
    <!-- meta... -->
  </head>
  <body>
  
    <header class="header">
      <!-- header elements... -->
    </header>
    
    <main class="main">
      {{zone('main')|raw}}
    </main>
    
    <footer class="footer">
      <!-- footer elements... -->
    </footer>
    
  </body>
</html>

{% endraw %}
{% endhighlight %}

## Theme Widgets

Widgets can also be coded directly into your theme, allowing you to define more specific types of content to certain areas. All Zone Widgets can be coded directly into your theme. The main difference between these and Zone Widgets is that they cannot be moved, they are locked to the location they have been defined. However the user is free to change the content and options of the Theme Widget, or even hide it from view.

### Defining a Theme Widget

Theme Widgets can be defined in your theme using the Twig theming language:

{% highlight django %}
{% raw %}
{{widget('content','headercontent',{})|raw}}
{% endraw %}
{% endhighlight %}

Because defining a Theme Widget is more specific than defining a Zone Area, the code is slightly more detailed. The above example is defining a ```content``` ```widget``` with than identifier of ```headercontent```. The identifier of a Theme Widget must be unique, if it is not then the theme will not be accepted by the editor.

Note that the Twig code used to define a particular widget contains additional brackets, ```{}```. This is where you can define default parameters, such as default content or settings.

Below is a basic example of defining a Theme Widget within a theme file, along with a default parameter:

{% highlight html %}
{% raw %}

<!doctype html>
<html>
  <head>
    <!-- meta... -->
  </head>
  <body>
  
    <header class="header">
      {{widget('logo', 'headerlogo', {"defaultlogo": asset('images/logo.png')})|raw}}
    </header>
    
    <main class="main">
      <!-- main elements... -->
    </main>
    
    <footer class="footer">
      <!-- footer elements... -->
    </footer>
    
  </body>
</html>

{% endraw %}
{% endhighlight %}

Despite that all Zone Widgets are all available to use as Theme Widgets, there are a certain amount that can only be used within the theme. Widgets such as [Logo](/widgets/v2/logo/), [Extended Navigation](/widgets/v2/extended-navigation/), and [Feature](/widgets/v2/feature/) are designed to be part of the theme structure. This means the user is limited to editing or hiding them.
