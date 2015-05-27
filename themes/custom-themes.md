---
layout: doc
title: Custom Themes
---

# Custom Themes

Rusic supports user created themes written in liquid. Themes allow you to build a website with your own HTML, CSS and JavaScript in your own environment with your preferred processes.

## Getting Setup

First you will need a Rusic account and an API key. You will also need to have the following installed on your system

* [Node.js](https://nodejs.org/download/)
* Ruby* - [Windows](http://rubyinstaller.org/) / [Ubuntu](https://gorails.com/setup/ubuntu/14.10)

*If you use Mac OS X this should already be installed.

We also need to install the tools that we are going to use to generate the project as well as deploy it to Rusic. In your terminal run -

{% highlight bash %}
{% raw %}
$ gem install rusic
$ npm install -g generator-rusic-theme
{% endraw %}
{% endhighlight %}

You will also need to [create a blank theme](/themes/create-a-blank-theme/) and then [create a new space](/spaces/create-a-new-space/) selecting your theme while doing so.

## Bootstrapping a new theme

To start a new theme it's usually best to use the generator. Go to to the directory that you want to create the theme in and run -

{% highlight bash %}
{% raw %}
$ mkdir my-theme-name
$ cd my-theme-name
$ yo rusic-theme{% endraw %}
{% endhighlight %}

Follow the wizard, you will need to enter your [Theme ID](/themes/where-can-i-find-my-theme-id/) and [API key](/api/where-can-i-find-my-api-key/) during this process.
