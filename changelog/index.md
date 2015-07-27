---
layout: doc
title: Changelog
---

# Changelog

### 1.6.0 - 10/02/15
- Added [guest idea](http://rusic.readme.io/v1/docs/guest-ideas) support
- Removed all plans, lifted account restrictions
- Deprecated API v0
- Deprecated API v1 - Admin endpoint
- API improvements
- Fix `www` being treated as an account
- Add liquid snippets support to give theme designers a more DRY way to write templates
- Added theme previews
- Added idea referrals
- Improved route handling to give theme developers the flexibility to put their forms on any page
- Added email based authentication
- Fixed an issue where CSS or JavaScript would not load via the proxy if the file was < 10kb
- Fixes to CSS & JavaScript uploading with the correct content-type
- Significantly speed up with image uploads
- More image sizes are now available where the image size is contained on the larger axis
- New liquid helper `pluralize_without_count`
- New liquid helper to get an image at any size `image_resize`
- Account owners can now disable comment and like emails
- Improved the 404 page to inform people about [sandbox mode](http://rusic.readme.io/v1/docs/sandbox-mode)
- Start of branding changes.

### 1.5.2 - 27/11/14
- Ideas API now responds with participant custom attributes

### 1.5.1 - 25/11/14
- A new 404 page with updated branding and Sandbox mode help text

### 1.5.0 - 17/11/14
- Likes no longer post to social by default
- Participants have a new blocked attribute that defaults to false
- Participants are no longer required to have an oauth token
- Community’s now have support for SAML based authentication
- Spaces now support session persistence configurable via the space settings
- API now supports:
  - Listing all participants in a bucket
  - Getting a single participant by token or uid
  - Editing the following attributes of a participant:
    - email_address
    - profile_url
    - image_url
    - nickname
    - name
    - blocked

### 1.4.1 - 14/11/14
- The Rusic logo has been updated to meet the new branding
- The home page is now directed towards “campaigns”
- Homepage features section updated to be clearer.

### 1.4.0 - 11/11/14
- Start tracking versions publicly
- JSON now supports filtering
- Assets can now be proxied
- Truncate liquid filter fixed
- Slice liquid filter added
- Fixed a bug where JSON requests made from mobile were not being handled as JSON
- Ability to lookup a participant via JSON
- Internal fixes and improvements
