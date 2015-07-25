---
layout: doc
title: Getting Started
---

# Getting started

Before you get started you'll need to [sign in](http://rusic.com/signin) to your Rusic account or [create an account](http://rusic.com/signup) if you don't have an one yet.

> If you know your way around HTML & CSS, you may want to skip to the section for [creating a custom theme](#custom-theme).

## Creating your first `Space`

After logging in you'll be greeted to your `Spaces`, though since your new here you'll need to create one first. To do so, click the **[+ New Space](http://rusic.com/spaces/new)** button.

> You can think of a `Space` like a website. Once it's created, you'll be able to visit it at `username.rusic.com`. **Pro tip: You can create multiple spaces within your account and even use your own domain names!**

Give your `Space` a name and add a short description so it has some character. Don't worry too much if you can't think of anything right away.

Next you'll need to choose a `Theme`, this is what will determine the behaviour and look of your `Space`.

> A `Theme` will determine whether your `Space` is a competition, an idea generator or a landing page. **Pro tip: If you're after something a little different, you can create your own custom theme to do pretty much anything!**

When you're ready, hit the **Create space** button. *Ta-da!* You should now see your newly created `Space`. Next you'll want to check your `Space` out (remember it's at `username.rusic.com`) and begin to customise it to make it your's.

## Creating a `Space` with a custom `Theme`

To create a custom `Theme` you'll need your developer chops at the ready and your computer setup with a few things to make creating one a breeze. But first lets run over how a theme works.

### How themes work with Rusic

Themes consists of [Liquid](https://github.com/Shopify/liquid), CSS and JavaScript; that's it. Your Liquid files are where you'll spend a lot of your time, they contain your markup and the Liquid tags that output all the kinds of data that Rusic provides you with.

> Anything you can do in Liquid you can do within the Rusic Liquid templates.

The thing that makes a Rusic `Theme` is the Liquid data that your are able to play with, like the current user that is logged in or the dynamic name of your `Space`. [Find out all the available Liquid attributes](). Also have a look at our [Object and variable reference](/themes/object-and-variable-reference) documentation to see a list of objects and variable data you can access within your Rusic theme.

All your Liquid, image, CSS and JavaScript files are hosted on Rusic and pushed a CDN automatically every time you deploy. So you work on your theme locally, and when you're ready to deploy you push it to Rusic and like magic, everything *just works*. Now to setup your local environment.

### Things you'll need before creating a `Theme`

We've created a few tools that'll help get you off the ground *quickly*, including a `yeoman` generator to scaffold a `Theme` and the `rusic` gem to make deployment a cinch.

* `node` & `npm` - [nodejs.org](https://nodejs.org)
* `yo` - [yeoman.io](http://yeoman.io)
* `generator-rusic-theme` - [github.com/rusic/generator-rusic-theme](https://github.com/rusic/generator-rusic-theme)
* `ruby` - [ruby-lang.org](https://www.ruby-lang.org)
* `rusic` - [rubygems.org/gems/rusic](https://rubygems.org/gems/rusic)
* `bower` - [bower.io](http://bower.io)
* `gulp` - [gulpjs.com](http://gulpjs.com/)

Once these are all installed it's time to get building your `Theme`!

### Create a new `Theme` with Rusic

First you will need to create a blank `Theme` from your Rusic dashboard, you can do this by doing to `Themes` and clicking the **[+ New Theme](http://rusic.com/themes)** button. Give your `Theme` a name, select the "Blank theme" option and hit the **Create theme** button.

The new `Theme` will now appear in your list of `Themes`, you're nearly ready to dive into some code! But you'll need your `Theme`'s ID and your API key before you do. You can find a `Theme`'s ID by clicking "Edit" on a `Theme` from within your list of `Themes` and looking for it's ID in the URL `http://rusic.com/themes/<theme-id>/edit`. Your API key can be found under the "Manage Community" then "[API Access](http://rusic.com/accounts/api)". You're good to go, time to scaffold out a theme!

### Scaffolding a barebones `Theme`

Back on your machine, open your CLI of choice and head to your preferred directory that you keep your sites in and create a new directory named after your theme (I'll stick with `demo-theme` for this).

```
cd ~/Sites
mkdir demo-theme
```
Enter the directory you just created an run the `yo` generator. This will take you through the setup process and ask you various questions about how'd you like your `Theme` setup including your `Theme`'s ID on Rusic and your API key.

```
cd demo-theme
yo rusic-theme
```

After `yo` has finished up your next step will be to deploy your theme and start development on it.

### Deploying your `Theme` to Rusic

To deploy your theme simply run the following command. This will send all your files up to Rusic's servers and your `Space` will be ready to view.

```
rusic deploy production
```

To being developing your `Theme` you'll need to tell `rusic` to watch your theme and sync any changes you do locally with Rusic. You can do this with thw following command.

```
rusic deploy production --watch
```

If you are using Sass and CoffeeScript you'll always want to run the provided `gulp` tasks. You can check the Gulpfile for all the available tasks but the default taks should get your assets compiling for you.

```
gulp
```

