---
layout: doc
title: Deploying your theme
---

# Deploying your theme

To deploy your `Theme` to Rusic you'll need the following things:

- An API key to allow you to deploy your code to Rusic
- ID of the `Theme` you wish to deploy to
- The `rusic` gem which will help you actually send your code to Rusic
- And an `.rusic.yml` file in the root of your theme to specify where you want to deploy to

## Getting your API key and theme ID

You can find your API key by logging into your Rusic account and going to the "API Access" section under "Manage community".

> **Pro tip:** You can [find your API key here](http://rusic.com/accounts/api).

Next, you'll need your theme's ID. From the [Themes](http://rusic.com/themes) page click "Edit" on the theme you want to deploy to and you should see it's ID in the URL.

```
http://rusic.com/themes/<id>/edit
```

## Installing the `rusic` gem

The `rusic` gem is a command line utility that will send your code to Rusic itself.

> **Pro tip: You can find out more about the `rusic` gem [here](https://rubygems.org/gems/rusic).**

To install the gem, run the following command in your CLI of choice.

```
gem install rusic
```

You can check if everything worked correctly by running:

```
rusic version
```

## Setup your deployment

The `rusic` gem is now almost ready to deploy your theme to Rusic. But it currently has no idea where your files want to go. This is where the `.rusic.yml` file comes in handy.

> **Pro tip: If you used the `yo` generator to scaffold your theme you should already have one of these.**

In the root of your project, create `.rusic.yml`. In here we'll specify a theme to deploy.

{% highlight yaml %}
{% raw %}
production:
  api_key: <your-api-key>
  theme: <your-theme-id>
{% endraw %}
{% endhighlight %}

Now you can run the following command to deploy your theme!

```
rusic deploy production
```

You can also add multiple environments if you wanted to have a staging and production space for example (these can also be named however you like).

{% highlight yaml %}
{% raw %}
production:
  api_key: <your-api-key>
  theme: <your-theme-id>
staging:
  api_key: <your-api-key>
  theme: <your-theme-id>
{% endraw %}
{% endhighlight %}

## Continuous deployment

Now you've got your theme deployed for the first time you probably want to start adding to it. You can do this easily by getting the `rusic` gem to continuously deploy to your theme on Rusic.

The following command will watch for any changes in your theme's files that need to be deployed and upload them for you as soon as you hit save in your editor.

```
rusic deploy production --watch
```
