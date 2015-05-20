---
layout: doc
title: JavaScript
---

# JavaScript

Adding customisation to your template is easy. We give you all the tools you need to bake in custom functionality to your templates.

## Adding Scripts

Template Development Tools offers full control of all HTML, CSS and JavaScript on your website. Giving you the ability to customise your website any way you like. This makes it easy to add scripts / CSS / images in wherever you need. The example below adds a few custom scripts to show what is capable.

{% highlight html %}
{% raw %}

<!doctype html>
<html>
  <head>
    <meta charset="utf-8" />
    <title>{{ page.title }}</title>
    <meta name="keywords" content="{{ page.keywords }}" />
    <meta name="description" content="{{ page.description }}" />
    <meta http-equiv="content-language" content="{{ page.seoLang }}" />
  
    {% if site.favicon %}
      <link rel="icon" href="{{ site.favicon['favicon'] }}" type="image/x-icon" />
      <link rel="SHORTCUT ICON" href="{{ site.favicon['thumbnail'] }}?v={{ 'now'|date('U') }}" type="image/x-icon" />
    {% endif %}

    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1">
  
    <!-- Script Example: Adding a Google Webmaster verification tag -->
    <meta name="google-site-verification" content="+nxGUDJ4QpAZ5l9Bsjdi102tLVC21AIh5d1Nl23908vVuFHs34="/>

    <link rel="stylesheet" href="//{{assetSubdomain}}.{{ brand.domain }}/templates/common/responsive-columns.css" />

    {% include basekit.headScript %}

    <!-- Head Script Example: Add Google Analytics -->
    <script type="text/javascript">

      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-XXXXX-Y']);
      _gaq.push(['_trackPageview']);
      
      (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();

    </script>
  </head>
  <body class="{{ page.backgroundClass }}">

    <div class="sidebar">
      <!-- Body Script Example: Add Google Adsense -->
      <script type="text/javascript">
      google_ad_client = "pub-";
      google_ad_width = 728;
      google_ad_height = 90;
      google_ad_format = "728x90_as";
      google_ad_type = "text_image";
      google_color_border = "FFFFFF";
      google_color_bg = "0000FF";
      google_color_link = "FFFFFF";
      google_color_text = "000000";
      google_color_url = "008000";
      </script><script type="text/javascript" src="http://pagead2.googlesyndication.com/pagead/show_ads.js"></script>
    </div>

    {{zone()|raw}}

    {% include basekit.bodyScript %}
  </body>
</html>

{% endraw %}
{% endhighlight %}
