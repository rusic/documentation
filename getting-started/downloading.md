---
layout: doc
title: Downloading a theme
---

# How to download a theme

What you'll need to download a theme:

* A local web server application (for example [MAMP for Mac OS X or Windows](/getting-started/#a-local-web-server-application))
* The [Local Theme Viewer](/getting-started/#access-to-the-local-theme-viewer)

Read our [Getting Started](/getting-started/) document for more information.

## Download the zip file

Once you've picked your chosen theme you'll be wanting to get hold of the code. Click on the theme panel on the left hand side of The Editor interface:

{% include imagecenter.html image="/assets/content/getting-started/theme-tab.png" alt="theme tab" %}

A menu will appear on the right of the theme panel. Click on the Download current theme button to download our developer-friendly zip file. 

{% include imagecenter.html image="/assets/content/getting-started/download-theme.png" alt="download theme" %}

Once our zip file has downloaded feel free to have a little look at what's in there. Each file will of course be different for each theme but you should have the following basics:

* ```stylesheet.less```: this is where you'll add your styles using CSS or LESS for example

* ```default.twig```: this is the default layout for all your pages. You can add more Twig files later

* ```metadata.json```: this is where you will set all your [options for your theme](/theming/metadata/)

{% include imagecenter.html image="/assets/content/getting-started/theme-files.png" alt="theme files" %}

## Using a local server

Now you will need the Local Theme Viewer. You will now need to put the Theme zip file you downloaded into the Theme Viewer folder and then into the folder named 'templates'.

See the example below using our [June](https://github.com/basekit-templates/june) theme:

{% include imagecenter.html image="/assets/content/getting-started/theme-directory.png" alt="theme directory" %}

Now open your local web server application of choice. We will be using MAMP for this example:

{% include imagecenter.html image="/assets/content/getting-started/mamp.png" alt="MAMP" %}

Click on the preferences button:

{% include imagecenter.html image="/assets/content/getting-started/mamp-preferences.png" alt="MAMP preference" %}

The preferences window will open with numerous tabs. Click on the Web Server or Apache (depending on what version of MAMP you are using) tab:

{% include imagecenter.html image="/assets/content/getting-started/mamp-server-options.png" alt="server options" %}

Click the grey folder icon next to "Document Root", and then select the ```public``` folder inside the TDK download. Click OK to confirm your changes.

You should be taken back to the main menu in the MAMP window. Click **Start Servers**. Once loaded, the symbol will turn green:

{% include imagecenter.html image="/assets/content/getting-started/mamp-servers.png" alt="start servers" %}

Once green, MAMP will automatically open up a web browser to give you information on your hostname and port number. Now search for **localhost** or **localhost:[insert port number here]** in your web browser.

**Note:** You may have problems finding your localhost if your server isn’t green. 

## The Theme Viewer

Once you have found your localhost, a page similar to the one below will appear. (Again we have used theme [June](https://github.com/basekit-templates/june) as an example.)

{% include imagecenter.html image="/assets/content/getting-started/tdk-themes.png" alt="TDK themes" %}

Click on the theme you wish to code, and get building.

![TDK](/assets/content/getting-started/tdk.png)

## What's next?

Check out the documentation on [editing a theme](/getting-started/editing/).
