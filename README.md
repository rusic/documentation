[BaseKit Documentation](http://docs.basekit.com)
=========================

Official documentation for building websites on the BaseKit platform

Contents
--------
* [Setup](#setup)
  * [Local Installation](#local-installation)
  * [Install Dependencies](#install-dependencies)
* [Gulp Tasks](#gulp-tasks)
* [Writing](#writing)
* [License](#license)

Setup
-----

### Local Installation

Running the site on your local machine:

1. ```$ gem install github-pages``` - Install github pages ruby gem
2. ```$ git clone git@github.com:basekit/docs.basekit.com.git``` - clone project
3. ```$ cd docs.basekit.com``` - Switch to project directory
4. ```$ jekyll serve --watch``` - Serve site locally using Jekyll
5. go to [```http://localhost:4000```](http://localhost:4000)

### Install Dependencies

Installing all the assets and dependencies required for development:

1. ```$ brew install npm``` - Install node
2. ```$ npm install``` - Install package dependencies
3. ```$ bower install``` - Install project assets

Gulp Tasks
----------

These are tasks that can be ran with gulp, all of which take the installed bower components and place them into the relevant project directories:

* ```$ gulp assets``` - Processes all assets for the project
  * ```$ gulp css``` - Places any CSS file into the ```_sass``` directory, prefixes it with ```_``` and changes the file type to ```.scss```
  * ```$ gulp sass``` - Places any SCSS file into the ```_sass``` directory and prefixes it with ```_```
  * ```$ gulp fonts``` - Places any font file into the ```fonts``` directory
  * ```$ gulp js``` - Places any JavaScript assets into the ```js``` directory
    *  ```$ gulp scripts``` - Places any JavaScript assets into the ```_scripts``` directory
    *  ```$ gulp compress``` - Compresses & places any JavaScript files in ```_scripts``` into the ```js``` directory

Writing
-------
The Documentation uses markdown to manage it's content. It also uses pygments for code samples and liquid shortcodes for small chunks of HTML. Take a look at the examples below:

### Code Sample
```
{% highlight html %}
{% raw %}
  <div class="element">
    <span>This is some sample HTML</span>
  </div>
{% endraw %}
{% endhighlight %}
```

### Button
```{% include button.html link="http://docs.basekit.com" text="This a button" %}```

### Centralised Text
```{% include aligncenter.html content="This text is centre aligned" %}```

### Centralised Button
```{% include buttoncenter.html link="http://docs.basekit.com" text="This button is centre aligned" %}```

License
-------

This software is released under the [MIT License](http://www.opensource.org/licenses/MIT).
