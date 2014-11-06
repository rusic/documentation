---
layout: doc
title: Metadata
---

# Metadata

All templates must contain a ```metadata.json``` file. This file provides key information about your template to the BaseKit environments on which it is installed.

## Properties of Metadata.json

* ```name``` (string) Name of the template. Use only the letters of the alphabet (upper or lower case), underscores (_), and dashes (-).

* ```thumbnail``` (string) Filename of the thumbnail that needs to included with the template repository. The file type should be JPG. Width: 285px. Height: 410px

* ```pageTypes``` (array) From Version >= 7.22. The page types that are available with your template. These are linked to the Twig files within the top level directory in your repository. i.e. home would expect home.twig. Currently supported page types are: ["home, about, contact, gallery"]

## The metadata.json example file

{% highlight json %}
{
	"name": "example",
	"thumbnail": "example.png",
	"pageTypes": [
		"home", "about", "contact", "gallery"
	]
}
{% endhighlight %}

## Advanced Metadata.json (optional)

Adding more information to your metadata file means that you can take advantage of BaseKit features such as colour swatch swapping and font swatch editing. Add custom colours and fonts gives the user more control of the appearance of their site.

* ```templateType``` (string): From Version >= 7.30. Template type of the template. Default is ```standard``` if not included. This will determine which type of template is for filtering in the template picker. Can either be ```standard```, ```blog```, ```ecommerce``` and ```menu```

* ```images``` (array): From Version >= 7.32. If you want the images in your template to appear in the BaseKit Images sidebar, you can define them in metadata.json

{% highlight json %}

"images":[
  "images/gallery/1.jpg",
  "images/gallery/2.jpg",
  "images/gallery/3.jpg",
  "images/gallery/4.jpg",
  "images/gallery/5.jpg",
  "images/gallery/6.jpg"
],

{% endhighlight %}

* ```colorSwatches``` (multi level array): A colour swatch consists of 7 colours. If the swatch is selected, the colours can be referenced in LESS. i.e. @color-swatch1. There can only be 7 colours per swatch but there can be more than one swatch within a template.

{% highlight json %}

"colorSwatches": {
  'Funky Named': {
    "color1": "#ffffff", // @color-swatch1
    "color2": "#72d0eb", // @color-swatch2
    "color3": "#83c028", // @color-swatch3
    "color4": "#2f353e", // @color-swatch4
    "color5": "#b4bec7", // @color-swatch5
    "color6": "#434f5b", // @color-swatch6
    "color7": "#ffffff"  // @color-swatch7
  },
  'Mega Swatch': {
    "color1": "#ffffff", 
    "color2": "#e0eef0", 
    "color3": "#413e4a", 
    "color4": "#b38184", 
    "color5": "#9d8e8e", 
    "color6": "#4b494f", 
    "color7": "#ffffff"
  }
},

{% endhighlight %}

### Referenced in LESS

{% highlight css %}

body {
  background-color: @color-swatch1;
  margin: 0;
  padding: 0;
}

{% endhighlight %}

* ```fontSwatch``` (multi level array): A font swatch is a collection of fonts and their respective values. We defined values for font swatches to link LESS styling to the editor. There are currently 9 fonts defined in a swatch; font-swatch1 to font-swatch9. This matches up in the font settings panel in the BaseKit editor. The fonts are linked to certain tags in the editor. For example, font-swatch1 is linked to the H1 tag in all BaseKit Templates. This is achieved through LESS, matching up swatch values to H1 properties. Note: font-swatch1 does not explicitly have to be matched up to H1, it is designed this way through LESS declarations. If you do not use font-swatch1 for H1 properties there will be a disconnect between the editor and your design. So we suggest you stick to BaseKit standards.

{% highlight json %}

"fontSwatch": {
  "title": "Arvo",
  "font1": { // H1 tag
    "font-family": "Arvo", // @font-swatch1-font-family
    "font-size": "36px", // @font-swatch1-font-size
    "font-weight": "inherit", // @font-swatch1-font-weight
    "line-height": "36px", // @font-swatch1-line-height
    "color": "@color-swatch4", // @font-swatch1-color
    "letter-spacing": "inherit" // @font-swatch1-letter-spacing
  },
  "font2": { // H2 tag
    "font-family": "Arvo", // @font-swatch2-font-family
    "font-size": "24px", // @font-swatch2-font-size
    "font-weight": "inherit", // @font-swatch2-font-weight
    "line-height": "inherit", // @font-swatch2-line-height
    "color": "@color-swatch4", // @font-swatch2-color
    "letter-spacing": "inherit" // @font-swatch2-letter-spacing
  },
  "font3": { // H3 tag
    "font-family": "Arvo", // @font-swatch3-font-family
    "font-size": "18px", // @font-swatch3-font-size
    "font-weight": "inherit", // @font-swatch3-font-weight
    "line-height": "inherit", // @font-swatch3-line-height
    "color": "@color-swatch4", // @font-swatch3-color
    "letter-spacing": "inherit" // @font-swatch3-letter-spacing
  },
  "font4": { // H5 tag
    "font-family": "Helvetica Neue, Arial", // @font-swatch14-font-family
    "font-size": "16px", // @font-swatch4-font-size
    "font-weight": "inherit", // @font-swatch4-font-weight
    "line-height": "inherit", // @font-swatch4-line-height
    "color": "@color-swatch4", // @font-swatch4-color
    "letter-spacing": "inherit" // @font-swatch4-letter-spacing
  },
  "font5": { // P tag
    "font-family": "Helvetica, arial", // @font-swatch5-font-family
    "font-size": "14px", // @font-swatch5-font-size
    "font-weight": "inherit", // @font-swatch5-font-weight
    "line-height": "28px", // @font-swatch5-line-height
    "color": "@color-swatch5", // @font-swatch5-color
    "letter-spacing": "inherit" // @font-swatch5-letter-spacing
  },
  "font6": { // Navigation
    "font-family": "Arvo", // @font-swatch6-font-family
    "font-size": "15px", // @font-swatch6-font-size
    "font-weight": "inherit", // @font-swatch6-font-weight
    "line-height": "inherit", // @font-swatch6-line-height
    "color": "@color-swatch6", // @font-swatch6-color
    "color-hover": "@color-swatch2", // @font-swatch6-color-hover
    "letter-spacing": "inherit",// @font-swatch6-letter-spacing
    "background-color": "@color-swatch2", // @font-swatch6-background-color
    "background-color-hover": "@color-swatch1" // @font-swatch6-background-color-hover
  },
  "font7": { // Buttons
    "font-family": "Helvetica, arial", // @font-swatch17-font-family
    "font-size": "14px", // @font-swatch7-font-size
    "font-weight": "inherit", // @font-swatch7-font-weight
    "line-height": "inherit", // @font-swatch7-line-height
    "color": "@color-swatch1", // @font-swatch7-color
    "letter-spacing": "inherit",// @font-swatch7-letter-spacing
    "background-color": "@color-swatch3", // @font-swatch7-background-color
    "background-color-hover": "darken(@color-swatch3,20%)" // @font-swatch7-background-color-hover
  },
  "font8": { // Feature Title
    "font-family": "Arvo", // @font-swatch8-font-family
    "font-size": "50px", // @font-swatch8-font-size
    "font-weight": "inherit", // @font-swatch8-font-weight
    "line-height": "50px", // @font-swatch8-line-height
    "color": "@color-swatch1", // @font-swatch8-color
    "letter-spacing": "inherit" // @font-swatch8-letter-spacing
  },
  "font9": { // Feature Text
    "font-family": "Arvo", // @font-swatch9-font-family
    "font-size": "24px", // @font-swatch9-font-size
    "font-weight": "inherit", // @font-swatch9-font-weight
    "line-height": "50px", // @font-swatch9-line-height
    "color": "@color-swatch1", // @font-swatch9-color
    "letter-spacing": "inherit" // @font-swatch9-letter-spacing
  }
  ,
  "font9": { // Company Name
    "font-family": "Arvo", // @font-swatch10-font-family
    "font-size": "36px", // @font-swatch10-font-size
    "font-weight": "inherit", // @font-swatch10-font-weight
    "line-height": "50px", // @font-swatch10-line-height
    "color": "@color-swatch1", // @font-swatch10-color
    "letter-spacing": "inherit" // @font-swatch10-letter-spacing
  }
}

{% endhighlight %}

### Referenced in LESS

{% highlight css %}

h1 {
  font-family:    @font-swatch1-font-family;
  font-weight:    @font-swatch1-font-weight;
  color:          @font-swatch1-color;
  line-height:    @font-swatch1-line-height;
  letter-spacing: @font-swatch1-letter-spacing;
  font-size:      @font-swatch1-font-size;
}

{% endhighlight %}

### Available Font Family Values

These are font values that we support current. You can use more but if you do, they will not match up to the BaseKit Editor. We recommend you stick to the list below:

| Primary Font          | Font Stack                                                    | Font Stack Escaped (use this within JSON or Javascript)             | 
|-----------------------|---------------------------------------------------------------|---------------------------------------------------------------------| 
| Droid Sans            | "Droid Sans", Helvetica, Arial, sans-serif                    | \"Droid Sans\", Helvetica, Arial, sans-serif                        | 
| Arvo                  | "Arvo", Georgia, serif                                        | \"Arvo\", Georgia, serif                                            | 
| Corben                | "Corben", Georgia, serif                                      | \"Corben\", Georgia, serif                                          | 
| Lobster               | "Lobster", Verdana, sans-serif                                | \"Lobster\", Verdana, sans-serif                                    | 
| Droid Serif           | "Droid Serif", Georgia, serif                                 | \"Droid Serif\", Georgia, serif                                     | 
| Raleway               | "Raleway", "Lucida Grande", Helvetica, sans-serif             | \"Raleway\", \"Lucida Grande\", Helvetica, sans-serif               | 
| Goudy Bookletter 1911 | "Goudy Bookletter 1911", "Times New Roman", Georgia, serif    | \"Goudy Bookletter 1911\", \"Times New Roman\", Georgia, serif      | 
| Abril Fatface         | "Abril Fatface", "Palatino Linotype", serif                   | \"Abril Fatface\", \"Palatino Linotype\", serif                     | 
| Yanone Kaffeesatz     | "Yanone Kaffeesatz", Georgia, serif                           | \"Yanone Kaffeesatz\", Georgia, serif                               | 
| Hammersmith One       | "Hammersmith One", Tahoma, Verdana, sans-serif                | \"Hammersmith One\", Tahoma, Verdana, sans-serif                    | 
| Lato                  | "Lato", Geneva, Tahoma, sans-serif                            | \"Lato\", Geneva, Tahoma, sans-serif                                | 
| PT Sans Narrow        | "PT Sans Narrow", Arial, sans-serif                           | \"PT Sans Narrow\", Arial, sans-serif                               | 
| Open Sans             | "Open Sans", Helvetica, Verdana, sans-serif                   | \"Open Sans\", Helvetica, Verdana, sans-serif                       | 
| Open Sans Condensed   | "Open Sans Condensed", Arial, Helvetica, sans-serif           | \"Open Sans Condensed\", Arial, Helvetica, sans-serif               | 
| Old Standard TT       | "Old Standard TT", "Book Antiqua", "Palatino Linotype", serif | \"Old Standard TT\", \"Book Antiqua\", \"Palatino Linotype\", serif | 
| Merriweather          | "Merriweather", Georgia, serif                                | \"Merriweather\", Georgia, serif                                    | 
| Montserrat            | "Montserrat", "Trebuchet MS", Helvetica, sans-serif           | \"Montserrat\", \"Trebuchet MS\", Helvetica, sans-serif             | 
| Roboto                | "Roboto", Geneva, "Lucida Console", sans-serif                | \"Roboto\", Geneva, \"Lucida Console\", sans-serif                  | 
| Titillium Web         | "Titillium Web", Geneva, Tahoma, sans-serif                   | \"Titillium Web\", Geneva, Tahoma, sans-serif                       | 
| Karla                 | "Karla", Verdana, Geneva, sans-serif                          | \"Karla\", Verdana, Geneva, sans-serif                              | 
| Oswald                | "Oswald", Arial, sans-serif                                   | \"Oswald\", Arial, sans-serif                                       | 
| Glegoo                | "Glegoo", Monaco, "Lucida Console", monospace                 | \"Glegoo\", Monaco, \"Lucida Console\", monospace                   | 
| Volkorn               | "Vollkorn", Georgia, serif                                    | \"Vollkorn\", Georgia, serif                                        | 
| Courgette             | "Courgette", "Lucida Grande", sans-serif                      | \"Courgette\", \"Lucida Grande\", sans-serif                        | 
| Abel                  | "Abel", "Lucida Console", monospace                           | \"Abel\", \"Lucida Console\", monospace                             | 
| Sniglet               | "Sniglet", Geneva, Gadget, sans-serif                         | \"Sniglet\", Geneva, Gadget, sans-serif                             | 
| Ubuntu                | "Ubuntu", Candara, Futura, sans-serif                         | \"Ubuntu\", Candara, Futura, sans-serif                             | 
| PT Sans               | "PT Sans", Tahoma, Geneva, sans-serif                         | \"PT Sans\", Tahoma, Geneva, sans-serif                             | 
| PT Serif              | "PT Serif", Georgia, serif                                    | \"PT Serif\", Georgia, serif                                        | 
| PT Mono               | "PT Mono", "Courier New", Courier, monospace                  | \"PT Mono\", \"Courier New\", Courier, monospace                    | 
| Times New Roman       | "Times New Roman", serif                                      | \"Times New Roman\", serif                                          | 
| Tahoma                | "Tahoma", sans-serif                                          | \"Tahoma\", sans-serif                                              | 
| Trebuchet             | "Trebuchet", Helvetica, sans-serif                            | \"Trebuchet\", Helvetica, sans-serif                                | 
| Verdana               | "Verdana", sans-serif                                         | \"Verdana\", sans-serif                                             | 
| Palatino              | "Palatino", serif                                             | \"Palatino\", serif                                                 | 
| Impact                | "Impact", sans-serif                                          | \"Impact\", sans-serif                                              | 
| Helvetica             | "Helvetica", Arial, sans-serif                                | \"Helvetica\", Arial, sans-serif                                    | 
| Myriad Pro            | "Myriad Pro", Helvetica, sans-serif                           | \"Myriad Pro\", Helvetica, sans-serif                               | 
| Georgia               | "Georgia", serif                                              | \"Georgia\", serif                                                  | 
| Futura                | "Futura", Helvetica, sans-serif                               | \"Futura\", Helvetica, sans-serif                                   | 
| Courier New           | "Courier New", monospace                                      | \"Courier New\", monospace                                          | 
| Arial                 | "Arial", sans-serif                                           | \"Arial\", sans-serif                                               | 

### The advance metadata.json example file

{% highlight json %}

{
  "name": "Pearl",
  "screenshot": "pearl.jpg",
  "pageTypes": ["home, about, contact, gallery"],
  "colorSwatches": {
    'Funky Named': {
      "color1": "#ffffff", 
      "color2": "#72d0eb", 
      "color3": "#83c028", 
      "color4": "#2f353e", 
      "color5": "#b4bec7", 
      "color6": "#434f5b", 
      "color7": "#ffffff"
    },
    'Mega Swatch': {
      "color1": "#ffffff", 
      "color2": "#e0eef0", 
      "color3": "#413e4a", 
      "color4": "#b38184", 
      "color5": "#9d8e8e", 
      "color6": "#4b494f", 
      "color7": "#ffffff"
    }
  },
  "fontSwatch": {
    "title": "Arvo",
    "font1": { // H1 tag
      "font-family": "Arvo",
      "font-size": "36px",
      "font-weight": "inherit",
      "line-height": "36px",
      "color": "@color-swatch4",
      "letter-spacing": "inherit"
    },
    "font2": { // H2 tag
      "font-family": "Arvo",
      "font-size": "24px",
      "font-weight": "inherit",
      "line-height": "inherit",
      "color": "@color-swatch4",
      "letter-spacing": "inherit"
    },
    "font3": { // H3 tag
      "font-family": "Arvo",
      "font-size": "18px",
      "font-weight": "inherit",
      "line-height": "inherit",
      "color": "@color-swatch4",
      "letter-spacing": "inherit"
    },
    "font4": { // H5 tag
      "font-family": "Helvetica Neue, Arial",
      "font-size": "16px",
      "font-weight": "inherit",
      "line-height": "inherit",
      "color": "@color-swatch4",
      "letter-spacing": "inherit"
    },
    "font5": { // P tag
      "font-family": "Helvetica, arial",
      "font-size": "14px",
      "font-weight": "inherit",
      "line-height": "28px",
      "color": "@color-swatch5",
      "letter-spacing": "inherit"
    },
    "font6": { // Navigation
      "font-family": "Arvo",
      "font-size": "15px",
      "font-weight": "inherit",
      "line-height": "inherit",
      "color": "@color-swatch6",
      "color-hover": "@color-swatch2",
      "letter-spacing": "inherit",
      "background-color": "@color-swatch2",
      "background-color-hover": "@color-swatch1"
    },
    "font7": { // Buttons
      "font-family": "Helvetica, arial",
      "font-size": "14px",
      "font-weight": "inherit",
      "line-height": "inherit",
      "color": "@color-swatch1",
      "letter-spacing": "inherit",
      "background-color": "@color-swatch3",
      "background-color-hover": "darken(@color-swatch3,20%)"
    },
    "font8": { // Feature Title
      "font-family": "Arvo",
      "font-size": "50px",
      "font-weight": "inherit",
      "line-height": "50px",
      "color": "@color-swatch1",
      "letter-spacing": "inherit"
    },
    "font9": { // Feature Text
      "font-family": "Arvo",
      "font-size": "24px",
      "font-weight": "inherit",
      "line-height": "50px",
      "color": "@color-swatch1",
      "letter-spacing": "inherit"
    }
  }
}

{% endhighlight %}
