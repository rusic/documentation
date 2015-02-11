---
layout: doc
title: Uploading a theme
---

# Upload a theme to the Editor

When your developer account has been set up. You will be able to upload themes via the Theme section within your account. This can be done by uploading a ZIP or using a GIT repository.

## Getting to the custom themes section

From within the Editor, press the ```Manage``` button.

{% include imagecenter.html image="/assets/content/editor-manage.png" alt="Manage button" %}

This will take you to the manage section picker. On this screen, click the ```Themes``` link to reveal the custom themes section.

{% include imagecenter.html image="/assets/content/manage-themes-link.png" alt="Manage themes link" %}

## Upload your first theme by ZIP file (from version 7.38)

In the Custom Theme section click the ```Upload ZIP``` button.

{% include imagecenter.html image="/assets/content/add-themes-3a.png" alt="Upload ZIP button" %}

You will be taken to the Zip upload panel. Select the Zip file from your local machine then press the ```Upload``` button.

{% include imagecenter.html image="/assets/content/theme-zip-upload.png" alt="Import theme from ZIP" %}

## Upload your first theme by Github (from version 7.32)

In the Custom Theme section click the ```Import from Github``` button.

{% include imagecenter.html image="/assets/content/add-themes-3b.png" alt="Import from GitHub button" %}

#### Enter your github.com URL

Custom themes can be pulled in from GitHub. To do this, you’ll need a GitHub account. If you haven’t got one yet, it’s free so go [grab one now](http://github.com/signup).

![Import from GitHub](/assets/content/add-themes-4.png)

The correct format for entry is: ```username/repositoryName```

For example:

```
basekit-templates/example
```

#### Private option

If the repository is private, click the ```Private``` option checkbox.

#### Pull the theme into the Editor

When you enter a correctly formatted location for the repository. Click the ```Get branches``` button.

You have the option to pull a version of the theme you want; ```branches``` or ```tag```. When you select a branch, click the ```Add``` button.

{% include imagecenter.html image="/assets/content/add-themes-5.png" alt="Select branch" %}

This will start the process of pulling the theme down into your account. This will take 10 - 30 seconds.

![Processing theme](/assets/content/add-themes-6.png)

## Apply the theme to the site

Once the theme has been pull from GitHub. Click the options on the theme and select view. This will take you to preview your site with your new theme.

{% include imagecenter.html image="/assets/content/add-themes-7.png" alt="Theme options" %}

If you can happy with the theme, click the ```Use theme``` button. This will redirect you back to the editor with the theme applied to your site.

{% include imagecenter.html image="/assets/content/add-themes-8.png" alt="Use theme" %}

#### Update the theme

If you make changes to your code, push them them to GitHub and make your way back to the Theme pick and click the ```Custom Themes``` button. To manage your custom themes, click the ```Manage custom themes``` button. Here you can add, delete and update your installed themes.

To re-pull code down from the theme's git repository, click the theme ```Options``` cog and press the ```Update``` button.

{% include imagecenter.html image="/assets/content/add-themes-7.png" alt="Theme options" %}

You have the option to pull a version of the theme you want; ```branches``` or ```tag```. When you select a branch, click the ```Add``` button.

This will start the process of pulling the theme down into your account. This will take 10 - 30 seconds.

---

#### Does pulling these changes affect my live site?

It will update the theme used in the editor but to see the changes live, you will need to publish your site again.
