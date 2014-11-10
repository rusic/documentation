[BaseKit Documentation](http://docs.basekit.com)
=========================

Official documentation for building websites on the BaseKit platform

Setup
-----

Installing via the command line (as of 24-10-14):

1. ```$ brew install npm jekyll```
2. ```$ git clone git@github.com:basekit/documentation.basekit.com.git```
3. ```$ cd documentation.basekit.com```
4. ```$ npm install```
6. ```$ bower install```
7. ```$ jekyll serve --watch```
8. go to [http://localhost:4000](http://localhost:4000)

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
