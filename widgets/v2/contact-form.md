---
layout: widget
title: Contact Form
searchable: false
versions:
- version: Version 2.0
  url: /widgets/v2/contact-form/
- version: Version 1.0
  url: /widgets/v1/contact-form/
---

# Contact Form

Add a Contact Form widget to your template

## Overview

You can add a Contact Form widget to your template to allow the visitor to send an email to the email address in the manage shared contact section or customised email address by the Editor user. The widget can be later customised within the BaseKit Editor.

To include a Contact Form widget in your template you will need to add the following line:

{% highlight ruby %}
{% raw %}

	{{widget('contactform', 'thisunqiuewidgetname', {'text': 'Submit','formTitle': 'Contact Form', 'email': 'profile'})|raw}}

{% endraw %}
{% endhighlight %}

## Widget Options

You can change the following options for the widget:

* ```text```: The text on the button.

* ```italic```: The text style on the button. ```true``` or ```false``` (default)

* ```bold```: The text style on the button. ```true``` or ```false``` (default)

* ```align```: The text style on the button. You can set it: 

  * ```justifyleft```
  * ```justifyright```
  * ```justifycenter``` (default)
  * ```justifyfull```

* ```fontSize```: The text style on the button. You can set it: 
```inherit``` (default), ```14```, ```16```, ```18```, ```20```, ```22```, ```24```

* ```formTitle```: The subject for the email.

* ```email```: Where the email is to be sent. It can be set to use the manage shared email address or put your own email address.
```profile``` (default). It will use the email address in the manage shared contact email address.
or example@example.com It could be set to custom email address

* ```goalSource```: The source of the url to redirect to after the form is submitted.
profile It will use the internal url.
or custom It can be set to a custom url

* ```goalUrl```: The url after submit the form.

  * If the ```goalSource``` is set to ```profile```, it should set to an internal link, e.g. ```home```
  * If the ```goalSource``` is set to ```custom```, it should set to an external link, e.g. ```www.basekit.com```

