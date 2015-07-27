---
layout: doc
title: Liquid
---

# Liquid

## What is liquid?

Rusic themes use a powerful templating language called liquid created by [Shopify](http://shopify.com).

Liquid is designed to be secure, fast to write, easy to learn and provide powerful functionality such as
loops, conditionals, filters and much more.

You can read more about the language at [the liquid official docs](https://github.com/Shopify/liquid/wiki) but here are some helpful
links to get you started -

- [Rusic object and variable referance](/themes/object-and-variable-reference/)
- [Liquid for Designers](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers)
  - [Filters](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers#standard-filters)
  - [Conditionals](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers#if--else)
  - [Loops](https://github.com/Shopify/liquid/wiki/Liquid-for-Designers#for-loops)
- [Liquid Railscast](http://railscasts.com/episodes/118-liquid)

## How do I use liquid with Rusic?

All theme templates in Rusic are written with liquid, take a look at our [theme generator](http://github.com/rusic/generator-rusic-theme) to
get up and running with a working example.

Rusic extends liquid by providing aditional filters and providing the templates with contextual varibles such as `space` and `idea`. You
can read more about these in the [Rusic object and variable reference](/themes/object-and-variable-reference/).
