---
layout: doc
title: File Structure
---

# File Structure

This is what a typical theme's file structure will look like, below we'll go into further detail about what does what.

{% highlight bash %}
{% raw %}
├── attributes.yml
├── .rusic.yml
├── assets
│  ├── image.png
│  ├── styles.css
│  └── scripts.js
├── bucket
│  └── expired.html.liquid
├── ideas
│  ├── edit.html.liquid
│  ├── new.html.liquid
│  ├── index.html.liquid
│  └── show.html.liquid
└── layouts
   └── subdomain.html.liquid
{% endraw %}
{% endhighlight %}

`attributes.yml`

Is where you can configure custom attributes for your theme. Adding attributes automatically builds up an interface with an associated Space to edit them on rusic.com. And of course, they can be outputted to any Liquid file in your theme.

`assets`

Is where you'll want to keep all your images, CSS and Javascript. Typically, you may have a `scss` and `coffee` at the root of your project folder to develop with and build the compiled versions of those files into this folder. **Pro tip: This folder can only be one level deep, so you won't be able to create `assets/images/logo.png` for example.**

`layouts/subdomain.html`

This is your main template file, it will be where your header and footer will go. All your other Liquid files will be rendered between your header and footer using the `{{ content_for_layout }}` Liquid helper. It's a good place to start when building out your theme.

`ideas/*.html.liquid`

These files will be rendered within your `layouts/subdomain.html` when your visit the corresponding path.

- `/` or `/ideas` will use the `index.html.liquid` page.
- `/ideas/1` will use the `show.html.liquid` page.
- `/ideas/1/edit` will use the `edit.html.liquid` page.
- `/ideas/new` will use the `new.html.liquid` page.

`bucket/expire.html.liquid`

This will be used when your `Space`'s expiry time is up.
