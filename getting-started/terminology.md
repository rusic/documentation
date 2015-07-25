---
layout: doc
title: Terminology
---

# Terminology

Before you dive into things, you might want to have a look at our terminology guide. Since Rusic is still undergoing changes, the terminology has developed with it.

### Buckets and Spaces

Throughout the docs you'll come across `buckets` quite a lot this is just another word for a `space`, it's your little nook in the Rusic web. So when you're developing your theme or project, you'll be using the term `space` instead, but when working with the API here in the docs, you'll be using `bucket`. A `space` can essentially be thought of as a site, it's your own spot on the web.

### Themes

If you've ever used Wordpress before, you'll be able to pick up what a Rusic `theme` is rather quickly. It's the visual styling and architecture of your space. You can use or customise a default rusic theme or create your from scratch or [start from our theme generator](http://github.com/rusic/generator-rusic-theme).

To learn more about the file structure of themes checkout out the [File Structure](/themes/file-structure/) documentation.

### Templates

Rusic has a few different `templates`. When you download or create a blank Rusic theme, you're given various files such as the `layouts/subdomain.html`, your main template file, and `ideas/*.html.liquid` files. Within these templates you're given structured Liquid code to work with to develop your theme.

### Ideas

`Ideas` are simply an entry or post within your space, submitted by yourself or another user. If you had a gallery of photos, a photo could be considered an idea within your gallery (space), or a recipe within a cookbook.

### Participants

Participants are the collective name for the people who interact with your space... they may have created ideas of their own or just liked or commented on somebody else's idea.

### Liquid

Liquid is the templating language that the templates are made from... read more about them [here](/themes/liquid/).

### Likes

An idea can have likes created by participants... if you've ever used Facebook it works just the same.

### Client apps

Rusic provides some client apps off the shelf. These are the bits you see when you click login with Facebook/Twitter on your space. By default when you do this the user will see something like "Do you want to allow Rusic to access your account". We let you bring your own client apps so that it shows your company name in place of Rusic.

### Rusic Gem

We provide an awesome little tool called the rusic gem that allows you to sync your local theme up to the cloud on each and every save. You can find out more about it [here](http://github.com/rusic/rusic-gem).

### Rusic Theme Generator

We provide a [yeoman](http://yeoman.io) generator that quickly allows you to get started with a theme that uses your coding prefences. You can find out more about it [here](http://github.com/rusic/generator-rusic-theme).

### Rusic API

We have a powerful API that allows you to do (almost) everything in your space like creating ideas or uploading images. You can find out more about it [here](/api).
