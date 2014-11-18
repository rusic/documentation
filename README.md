[BaseKit Documentation](http://docs.basekit.com)
=========================

Official documentation for building websites on the BaseKit platform

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

Gulp tasks
----------

These are tasks that can be ran with gulp, all of which take the installed bower components and place them into the relevant project directories:

* ```$ gulp assets``` - Processes all assets for the project
  * ```$ gulp css``` - Places any CSS file into the ```_sass``` directory, prefixes it with ```_``` and changes the file type to ```.scss```
  * ```$ gulp sass``` - Places any SCSS file into the ```_sass``` directory and prefixes it with ```_```
  * ```$ gulp fonts``` - Places any font file into the ```fonts``` directory
  * ```$ gulp js``` - Places any JavaScript assets into the ```js``` directory
    *  ```$ gulp scripts``` - Places any JavaScript assets into the ```_scripts``` directory
    *  ```$ gulp compress``` - Compresses & places any JavaScript files in ```_scripts``` into the ```js``` directory

License
-------

This software is released under the [MIT License](http://www.opensource.org/licenses/MIT).
