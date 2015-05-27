---
layout: doc
title: Facebook
---

# Facebook

Rusic provides Client Apps by default for all spaces. These client apps are valid only when you are using the Rusic domain provided for example [https://community.rusic.com](https://community.rusic.com). You may find that you need to setup your own Client App if -

* You want the Facebook login screen to show your site name instead of Rusic
* You want to use a custom domain name

Follow the instructions below to setup your own Client App.

## 1. Create a Facebook Application

Login to Facebook then go to the [Facebook Developer Portal](https://developers.facebook.com/).

{% include caption.html image="/assets/content/facebook/add-new.png" caption='Under "Apps" in the header click "Add a New App"' %}

{% include caption.html image="/assets/content/facebook/add-new-popup.png" caption='In the popup select "advanced setup"' %}

{% include caption.html image="/assets/content/facebook/create.png" caption='Give the app a sensible name that describes your website and choose a category. Once done click "Create App ID.' %}

Go to the settings menu in the sidebar and then Add Platform as "Website".

{% include caption.html image="/assets/content/facebook/configure.png" caption='Enter your domain in the "App Domains" and "Site URL". Also add your e-mail into the "Contact Email" field.' %}

"Save Changes" and then take a note of your App ID and App Secret, you will need this later. Next move onto the "Status & Review" item in the menu bar.

{% include caption.html image="/assets/content/facebook/cats.gif" caption='Finally set the app to be public.' %}

## 2. Configure Rusic to use this application

Login to Rusic and then go to the [Client Apps Page](https://rusic.com/client-apps). Before making any changes check that you are modifying the correct community, this is shown in the top-left corner next to the Rusic icon.

Click "Add your own app" on the Facebook application.

{% include caption.html image="/assets/content/facebook/configure-rusic.png" caption='Enter any the same name as you gave the Facebook Application and enter the key & secret from the previous step.' %}

Click Save.
