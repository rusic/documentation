---
layout: doc
title: SAML
---

# SAML

Want to bring your own authentication to Rusic? If so then SAML may be the solution for you.

## Add/Edit SAML Configuration to your campaign

1. Login to Rusic at [http://rusic.com/signin](http://rusic.com/signin)
2. Check your in the community in the top bar

    <img src="/assets/content/saml/account.png" class="image--small">

3. Click to "Manage community" in header
4. Click "Client apps" in the menu
5. Click "Add your own app" if you are creating a new SAML client app or the name of your App if you are editing an exising configuration

    <img src="/assets/content/saml/index.png" class="image--small">

6. Enter your SAML details. You can get these from your network administrator.

    <img src="/assets/content/saml/edit.png" class="image--small">

7. Click "Save"

To test visit `/auth/saml` on your Rusic subdomain or custom domain.
