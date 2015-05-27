---
layout: doc
title: Sandbox Mode
---

# Sandbox Mode

Sandbox mode is a feature that prevents unauthorized access to your space. This is is particularly useful for when you are developing a space or reviewing it with third-parties.

To be able to view the space the user must be signed into an Rusic account that has editable or administrative privileges of that space. If you are not logged into Rusic when you try to access a space in Sandbox Mode then you will be presented with the Rusic 404 page.

>  Why a 404 page and not 401?
> Spaces in sandbox mode will return a HTTP status code of 404 when the user is disallowed access. This is to fully protect the privacy of the campaign so that a malicious user can not distinguish between a campain that exists (but is in Sandbox Mode) and one that does not exits.
> For example -
> [https://super-secret-campaign.rusic.com](https://super-secret-campaign.rusic.com)
> would show the same as -
> [https://this-campaign-does-not-exist.rusic.com](https://this-campaign-does-not-exist.rusic.com)

## Enabling Sandbox Mode

Go to your space settings and check the Sandbox mode option.

![Enabling sandbox mode](/assets/content/sandbox-mode/turn-on-sandbox-mode.png)

Once done click "Save changes" at the bottom of the page.

## Accessing a space in Sandbox Mode

To access a space in Sandbox mode you must first login to Rusic as a user that has editable or administrative privileges of that space.

If you are not able to view the space that you are trying to access then try these steps:

1. Go to [Rusic login](https://rusic.com/signin) and sign in
2. Try accessing the space again
