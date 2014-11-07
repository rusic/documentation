---
layout: doc
title: Assets
---

# Assets
With a BaseKit template you can upload assets along with it. There are a certain file types that we accept within a git repository.

## HTML file types

```
*.twig
```

## CSS file types

```
*.less *.css
```

## Image file types

```
*.jpg *.jpeg *.png *.gif *.svg
```

## JavaScript file types

```
*.js *.json
```

## Other file types

```
*.md
```

### File and structure

A common BaseKit repository directory structure looks like:

{% highlight text %}
{% raw %}

images/ 
  - feature-bg.jpg 
  - icons.png 
  - logo.png 
README.md 
default.twig 
example.jpg 
home.twig 
metadata.json 
stylesheet.less

{% endraw %}
{% endhighlight %}

## Recommendations

* If you include any other file types, the repository will not upload to a BaseKit environment.

* Please use [a-z_-] characters only.

* There is a 100MB size limit on repositories. Anything over will not be

## asset() & image() functions

BaseKit templates can be deployed to multiple environments, so we refer to a file relatively in the template code. The BaseKit framework will convert these relative links into absolute urls at the point of display.

For example, to reference logo.png in the images directory:

In ```*.less``` files you use the ```image()``` function

{% highlight css %}
{% raw %}

  div.logo { background-image:image('/image/logo.png'); }

{% endraw %}
{% endhighlight %}

NOTE: You can reference images in LESS files.

In *.twig files you use the asset() function.

{% highlight html %}
{% raw %}

  <img src="//d35onr1h4eb0bw.cloudfront.net/ef8d958/templates/5149d4be5e7f8d92a41a0a8aa131a24d//image/logo.png" />

{% endraw %}
{% endhighlight %}

NOTE: You can reference any asset file in a Twig file. i.e.

{% highlight html %}
{% raw %}

  <link href="//d35onr1h4eb0bw.cloudfront.net/ef8d958/templates/5149d4be5e7f8d92a41a0a8aa131a24d//css/style.css" />

{% endraw %}
{% endhighlight %}
