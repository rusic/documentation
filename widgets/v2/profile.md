---
layout: widget
title: Profile
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/profile/
- version: Version 1.0
  url: /widgets/v1/profile/
---

# Profile

Add a profile widget to your template.

You can add a profile widget to your template. The profile widget contains 11 types, and can use data from the user profile or can be customised by the user. The widget can be later customised within the BaseKit Editor.

## Examples

To include a profile widget in your template you will need to add the following example lines:

### Example usage

{% highlight django %}
{% raw %}

  {{widget('profile', 'profilearea', {
    'profileType':'twitter',
    'twitter':'profile',
    'refreshtime':'1800000'
  })|raw}}

{% endraw %}
{% endhighlight %}

#### Resulting HTML:

{% highlight html %}
{% raw %}

<!-- PROFILE COMPANY STRAPLINE WIDGET -->
<div id="page-zones__template-widgets__profilearea" data-name="profile" class="widget  widget--template-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="company-strapline company-strapline--profile-widget">
      <h2 class="strapline  company-strapline__strapline">Here is the website strapline!</h2>
    </div>
  </div>
</div>

<!-- PROFILE COMPANY DESCRIPTION WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="company-description  company-description--profile-widget">
      <h3 class="description  company-description__description">This is the company description</h3>
    </div>
  </div>
</div>


<!-- PROFILE COMPANY ADDRES WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="vcard  company-address__vcard">
      <address class="address  company-address__address">
        <p class="address-line  address-line--one  company-address__address-line  fn  org">123 Example Street</p>
        <p class="address-line  address-line--two  company-address__address-line">Test Plaza</p>
        <p class="address-line  address-line--three  company-address__address-line">Block Number One</p>
        <p class="address-line  address-line--code  company-address__address-line">BS1 2ND</p>
        <p class="address-line  address-line--country  company-address__address-line">United Kingdom</p>
      </address>
    </div>
  </div>
</div>

<!-- PROFILE EMAIL ADDRESS WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="email-address  email-address--profile-widget">
      <a class="email  email-address__email" href="mailto:defaultemail@provider.com">defaultemail@provider.com</a>
    </div>
  </div>
</div>

<!-- PROFILE PHONE NUMBER WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="company-phone-number  company-phone-number--profile-widget">
      <a class="phone-number-link  icon  icon--phone  company-phone-number__phone-number-link" href="tel:  ">
      <span class="phone-number  company-phone-number__phone-number">020123456789</span>
      </a>
    </div>
  </div>
</div>

<!-- PROFILE COMPANY ADDRESS WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="company-business  company-business--profile-widget">
      <p class="business  company-business__business">Business Name</p>
    </div>
  </div>
</div>

<!-- PROFILE COMPANY COPYRIGHT WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="company-copyright  company-copyright--profile-widget">
      <p class="copyright  company-copyright__copyright">Copyright 2014. All Rights Reserved.</p>
    </div>
  </div>
</div>

<!-- PROFILE TWITTER FEED WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="twitter-feed  twitter-feed--profile  widget__twitter-feed js-twitter">
      <div class="tweet-item  twitter-feed__tweet-item">
        <div class="avatar  twitter-feed__avatar">
          <a class="avatar-link  twitter-feed__avatar-link" href="https://twitter.com/basekit" target="_blank">
            <img class="avatar-image  twitter-feed__avatar-image" alt="BaseKit.Com" title="BaseKit.Com" data-screename="basekit" src="http://placehold.it/98x98">
          </a>
        </div>
        <div class="tweet-wrap  twitter-feed__tweet-wrap">
          <a class="account-link  twitter-feed__account-link" href="https://twitter.com/basekit" target="_blank">
            <span class="account-name  twitter-feed__account-name">BaseKit.Com</span>
          </a>
          <p class="tweet-content  twitter-feed__tweet-content">How To Get Big-Brand Search Visibility</p>
          <span class="tweet-metadata  twitter-feed__tweet-meta">
            <time class="timestamp  twitter-feed__timestamp" datetime="2014-10-22T00:00:00+00:00">Thu Aug 01 11:30:49 +0000 2013</time> <span class="via  twitter-feed__via">via</span> <a href="http://www.tweetdeck.com" rel="nofollow">TweetDeck</a>
          </span>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- PROFILE SIGN UP FORM WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <form class="form  signup-form__form">
      <fieldset class="fieldset  signup-form__fieldset">
        <legend class="legend  signup-form__legend">Sign Up</legend>
        <div class="form-body  signup-form__form-body">
          <div class="form-group  signup-form__form-group">
            <label class="label  signup-form__label  label--email" for="page-zones__main-widgets__profilearea">Your email</label>
            <input class="input  signup-form__input  input--email js-email" id="page-zones__main-widgets__profilearea" name="page-zones__main-widgets__profilearea" placeholder="Type your email" type="email" />
          </div>
          <div class="form-group  signup-form__form-group">
            <input class="button  signup-form__input  button--submit" type="submit" value="Send" />
          </div>
        </div>
      </fieldset>
    </form>
  </div>
</div>

<!-- PROFILE SOCIAL ICONS WIDGET -->
<div id="page-zones__main-widgets__profilearea" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="social-icons  social-icons--profile  widget__social-icons">
      <ul class="social-list  social-icons__social-list">
        <li class="social-item  social-icons__social-item">
          <a class="social-link  icon  icon--twitter  social-social-link" href="https://twitter.com/twitter.com" target="_blank">
            <span class="social-name  social-icons__social-name">Twitter</span>
          </a>
        </li>
        <li class="social-item  social-icons__social-item">
          <a class="social-link  icon  icon--facebook  social-social-link" href="facebook.com" target="_blank">
            <span class="social-name  social-icons__social-name">Facebook</span>
          </a>
        </li>
        <li class="social-item  social-icons__social-item">
          <a class="social-link  icon  icon--rss  social-social-link" href="rss.com" target="_blank">
            <span class="social-name  social-icons__social-name">RSS</span>
          </a>
        </li>
        <li class="social-item  social-icons__social-item">
          <a class="social-link  icon  icon--linkedin  social-social-link" href="linkedin.com" target="_blank">
            <span class="social-name  social-icons__social-name">Linkedin</span>
          </a>
        </li>
        <li class="social-item  social-icons__social-item">
          <a class="social-link  icon  icon--googleplus  social-social-link" href="googleplus.com" target="_blank">
            <span class="social-name  social-icons__social-name">Google+</span>
          </a>
        </li>
        <li class="social-item  social-icons__social-item">
          <a class="social-link  icon  icon--youtube  social-social-link" href="youtube.com" target="_blank">
            <span class="social-name  social-icons__social-name">YouTube</span>
          </a>
        </li>
      </ul>
    </div>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget options

You can change the following options for the widget:

* ```profileType```: The profile type you want to display. ```address```, ```email```, ```strapline```, ```companydescription```, ```phone```, ```business```, ```copyright```, ```twitter```, ```map```, ```form```, ```socialicons```

Once you select the profile type, you need to specify options for the type:

* ### Address type
  ```profileType```: ```address```

  * ```address```: The address to display. If set to ```profile```, it will use the profile data, or you can put address e.g. ```My Company Name```

  * ```address1```: The address1 to display. If set to ```profile```, it will use the profile data, or you can put address e.g. ```Example Street```

  * ```address2```: The address2 to display. If set to ```profile```, it will use the profile data, or you can put address e.g. ```Atown```

  * ```country```: The country to display. You can only set to ```profile```

  * ```addressPostalCode```: The postal code to display. If set to ```profile```, it will use the profile data, or you can put postcode e.g. ```BS1 2ND```

* ### Email type
  ```profileType```: ```email```

  * ```email```: The email address to display. If set to ```profile```, it will use the profile data, or you can put email address e.g. ```me@myemail.com```

* ### Strapline type
  ```profileType```: ```strapline```

  * ```strapline```: The strap line to display. If set to ```profile```, it will use the profile data, or you can put custom strap line e.g. ```my strapline```

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

* ### Latest Twitter type
  ```profileType```: ```twitter```

  * ```twitter```: The twitter username for getting the latest tweet. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```BaseKit```

  * ```refreshtime```: It controls how often the data gets refreshed. It uses millisecond as the unit. You can set ```60000``` for one minute

* ### Map type
  ```profileType```: ```map```

  * ```mapAddress```: The address for rendering a Google Maps visual. If set to ```profile```, it will use the profile data, or you can put custom data e.g. ```BS1 2ND```

  * ```mapZoom```: The map zoom level, e.g ```12```

  * ```mapHeight```: The map height in ```px```. It can be set e.g ```150```

* ### Single Form type
  ```profileType```: ```form```

  It uses the profile email address as the form submission address, but the user can change the profile email address in the editor.

  * ```formText```: The send button text. It can be set e.g ```Send```

  * ```formTitle```: The email subject. It can be set e.g ```Contact Form```

  * ```formItalic```: The button text style. ```true``` or ```false```

  * ```formBold```: The button text style. ```true``` or ```false```

  * ```formAlign```: The button text style. You can set it:

    * ```justifyleft```
    * ```justifyright```
    * ```justifycenter```
    * ```justifyfull```

  * ```formFontSize```: The Button text style. You can set it: ```inherit```, ```14```, ```16```, ```18```, ```20```, ```22```, ```24```

  * ```goalSource```: The source of the URL after you submit the form
    * ```profile``` will use the internal link
    * ```custom``` could be set to custom email address

  * ```goalUrl```: The url after submit the form
  
    * If the ```goalSource``` is set to ```profile```, it should be set to an internal link, e.g. ```home``` 
    * If the ```goalSource``` is set to ```custom```, it should be set to an external link, e.g. ```www.mysite.com```

* ### Social Icons Type
  ```profileType```: ```socialicons```

  * ```socialIconsLinkedin```: LinkedIn icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.linkedin.com/company/mycompany```

  * ```socialIconsTwitter```: Twitter icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```twitter```

  * ```socialIconsFacebook```: Facebook icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://facebook.com/mycompany```

  * ```socialIconsRss```: RSS icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.google.com/rss```

  * ```socialIconsGoogleplus```: Google+ icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.googleplus.com/mycompany```

  * ```socialIconsYoutube```: YouTube icon. If set to ```profile```, it will use the profile data, or you can put custom data in e.g. ```http://www.youtube.com/mycompany```
  