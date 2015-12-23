---
layout: doc
title: Google
---

# Google

Rusic provides some Client Apps by default for all spaces. However Google imposes domain limitations on their applications. To add Google authentication to your community you must setup your own application.

Follow the instructions below to setup your own Google Client App.

## 1. Create a Google Application

Login to Google then go to the [Google Developers Console](https://console.developers.google.com).

{% include caption.html image="/assets/content/google/create_a_project.png" caption='In the dropdown next to console select Create a project' %}

{% include caption.html image="/assets/content/google/name_project.png" caption='Give your application any name, then press create' %}

{% include caption.html image="/assets/content/google/api.png" caption='Click Enable and manage APIs' %}

You then need to enable the **Contacts API** and the **Google+ API**.

Once done select **Credentials** from the sidebar, then go to the **OAuth consent screen** tab.

{% include caption.html image="/assets/content/google/Credentials_-_My_Rusic_Community.png" caption='Click New credentials, then OAuth client ID' %}

{% include caption.html image="/assets/content/google/Create_client_ID_-_My_Rusic_Community.png" caption='Select Web application then Add your redirect URIs this will be your domain + `/auth/google_oauth2/callback` on the end. If you have a custom domain you can use this here too.' %}

Click create then copy the ID and the secret from the popup that follows.

Finally go to the **OAuth consent screen** tab and enter something into the **Product name shown to users** field before saving.

## 2. Configure Rusic to use this application

Login to Rusic and then go to the [Client Apps Page](https://rusic.com/client-apps). Before making any changes check that you are modifying the correct community, this is shown in the top-left corner next to the Rusic icon.

Click "Add your own app" on the Google application.

{% include caption.html image="/assets/content/google/Rusic_·_Building_communities.png" caption='Enter the ID that you copied down earlier into the **OAuth consumer key** field and the secret into the **OAuth consumer secret** field' %}

Click Save.

You should now be able to test login by going to your community home and adding `/auth/google_oauth2` to the URL.
