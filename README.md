[BaseKit Documentation](http://docs.basekit.com)
=========================

Official documentation for building websites on the BaseKit platform

Setup
-----

### Local Installation

Running the site on your local machine:

1. ```$ gem install github-pages```
2. ```$ git clone git@github.com:basekit/docs.basekit.com.git```
3. ```$ cd docs.basekit.com```
4. ```$ jekyll serve --watch```
5. go to [```http://localhost:4000```](http://localhost:4000)

### Install Dependancies

Installing all the assets and dependancies required for development:

1. ```$ brew install npm``` - Install node
2. ```$ npm install``` - Install package dependancies
3. ```$ bower install``` - Install project assets

Gulp tasks
----------

These are tasks that can be ran with gulp, all of which take the installed bower components and place them into the relevant project directories:

* ```$ gulp assets``` - Processes all assets for the project
* ```$ gulp js``` - Places any JavaScript assets into the ```js``` directory
* ```$ gulp css``` - Places any CSS file into the ```_sass``` directory, prefixes it with ```_``` and changes the file type to ```.scss```
* ```$ gulp sass``` - Places any SCSS file into the ```_sass``` directory and prefixes it with ```_```
* ```$ gulp fonts``` - Places any font file into the ```fonts``` directory

License
-------

This software is released under the [MIT License](http://www.opensource.org/licenses/MIT).
