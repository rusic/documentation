---
layout: widget
title: Profile
versions:
- version: Version 2.0
  url: /widgets/v2/profile/
- version: Version 1.0
  url: /widgets/v1/profile/
---

# Profile

Add a Profile widget to your template.

## Overview

You can add a Profile widget to your template. The Profile widget contains 11 types and can use data from the user profile or customised by the user. The widget can be later customised within the BaseKit Editor. 

To include a Profile widget in your template you will need to add the following example lines:

{% highlight django %}
{% raw %}

	{{widget('profile', 'thisunqiuewidgetname', { 'profileType':'twitter', 'twitter':'profile', 'refreshtime':'1800000'})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```profileType```: The profile type you want to display. ```address```, ```email```, ```strapline```, ```companydescription```, ```phone```, ```business```, ```copyright```, ```twitter```, ```map```, ```form```, ```socialicons```

Once you select the profile type, you need to specify options for the type:

* ### Address type
  ```profileType```: ```address```

  * ```address```: The address to display. If set to ```profile```, it will use the profile data, or you can put address e.g. ```BaseKit```

  * ```address1```: The address1 to display. If set to ```profile```, it will use the profile data, or you can put address e.g. ```BaseKit```

  * ```address2```: The address2 to display. If set to ```profile```, it will use the profile data, or you can put address e.g. ```BaseKit```

  * ```country```: The country to display. You can only set to ```profile```

  * ```addressPostalCode```: The postal code to display. If set to ```profile```, it will use the profile data, or you can put postcode e.g. ```BS1 2ND```

* ### Email type
  ```profileType```: ```email```

  * ```email```: The email address to display. If set to ```profile```, it will use the profile data, or you can put email address e.g. ```basekit@basekit.com```

* ### Strap Line type
  ```profileType```: ```strapline```

  * ```strapline```: The strap line to display. If set to ```profile```, it will use the profile data, or you can put custom strap line e.g. ```my strap line```

* ### Company Description type
  ```profileType```: ```companydescription```

  * ```companydescription```: The company description to display. If set to ```profile```, it will use the profile data, or you can put custom data e.g. ```my company```

* ### Phone type
  ```profileType```: ```phone```

  * ```phone```: The phone number to display. If set to ```profile```, it will use the profile data, or you can put custom data e.g. ```12345678```

* ### Business type
  ```profileType```: ```business```

  * ```business```: The business name to display. If set to ```profile```, it will use the profile data, or you can put custom data e.g. ```BaseKit```

* ### Copyright type
  ```profileType```: ```copyright```

  * ```copyright```: The copyright to display. If set to ```profile```, it will use the profile data, or you can put custom data e.g. ```© Copyright 2012 BaseKit Platform. All rights reserved```

* ### Latest twitter type
  ```profileType```: ```twitter```

  * ```twitter```: The twitter username for getting the latest tweet. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```BaseKit```

  * ```refreshtime```: It controls how often the date gets refreshed. It uses millisecond as the unit. You can set ```60000``` for one minute

* ### Map type
  ```profileType```: ```map```

  * ```mapAddress```: The address for rendering the google map. If set to ```profile```, it will use the profile data, or you can put custom data e.g. ```BS1 2ND```

  * ```mapZoom```: The map zoom level, e.g ```12```

  * ```mapHeight```: The map height in ```px```. It can be set e.g ```150```

* ### Single Form type
  ```profileType```: ```form```

  It uses the profile email address as the form submission address, but the user can change the profile email address in the editor.

  * ```formText```: The send button text. It can be set e.g ```Send```

  * ```formTitle```: The email subject. It can be set e.g ```Contact Form```

  * ```formItalic```: The Button text style. ```true``` or ```false```

  * ```formBold```: The Button text style. ```true``` or ```false```

  * ```formAlign```: The Button text style. You can set it:

    * ```justifyleft```
    * ```justifyright```
    * ```justifycenter```
    * ```justifyfull```

  * ```formFontSize```: The Button text style. You can set it: ```inherit```, ```14```, ```16```, ```18```, ```20```, ```22```, ```24```

  * ```goalSource```: The source of the url after submit the form
    * ```profile``` will use the internal link
    * ```custom``` could be set to custom email address

  * ```goalUrl```: The url after submit the form
  
    * if the ```goalSource``` is set to ```profile```, it should set to an internal link, e.g. ```home``` 
    * if the ```goalSource``` is set to ```custom```, it should set to an external link, e.g. ```www.basekit.com```

* ### Social Icons type
  ```profileType```: ```socialicons```

  * ```socialIconsLinkedin```: LinkedIn icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.linkedin.com/company/basekit‎```

  * ```socialIconsTwitter```: Twitter icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```BaseKit```

  * ```socialIconsFacebook```: Facebook icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://facebook.com/basekit‎```

  * ```socialIconsRss```: Rss icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.google.com/rss```

  * ```socialIconsGoogleplus```: Google+ icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.googleplus.com/basekit‎```

  * ```socialIconsYoutube```: Youtube icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.youtube.com/basekit‎```
  