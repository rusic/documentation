---
layout: widget
title: Company Address
searchable: true
versions:
- version: Version 2.0
  url: /widgets/v2/company-address/
- version: Version 1.0
  url: /widgets/v1/company-address/
---

# Company Address

Add a company address widget to your template.

## Overview
You can add a company address widget to your template which contains the company address in the 'manage shared contact' section. The widget can be later customised within the BaseKit Editor.

To include a company address widget in your template you will need to add the following line:

{% highlight django %}
{% raw %}

  {{widget('companyaddress', 'thisuniquewidgetname', {})|raw}}

{% endraw %}
{% endhighlight %}


<h4>Result</h4>
{% highlight html %}
{% raw %}

<div id="page-zones__main-widgets__ProfileWidget6" data-name="profile" class="widget  widget--zone-widget">
  <div class="bk-profile  profile  widget__profile">
    <div class="company-business  company-business--profile-widget">
      <p class="business  company-business__business">Business Name</p>
    </div>
  </div>
</div>

{% endraw %}
{% endhighlight %}

## Widget Options

This widget will use the data in your 'manage shared contact' section. So you don't need to set it.
