---
layout: doc
title: Pages
---

# Pages

With every custom theme you can define pages. These pages don't have to confirm to the ideas structure, and all of the
varibles and objects that we provide on the ideas#index page are also available to use on any page.

## Add a page

To add a page go to -

> Themes > Edit > Template editor > Pages > Add

You can then give the page a name, it must always start with `pages/` but can be anything you like such as
`pages/about`.

## Layout-less pages

Pages are by default wrapped in the Layout file at the point where the `yield` block is provided in the template.
It is possible to have layout-less pages by unchecking the "Include the layout?" option on the edit template page.

The benifits of doing this is to have pages that have different chromes, for use in a mobile/desktop app or to embed the
page into a different site.
