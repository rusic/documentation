// Create gulp variables
var gulp		= require('gulp');
var bower		= require('main-bower-files');
var rename		= require('gulp-rename');
var filter		= require('gulp-filter');

var uglify		= require('gulp-uglify');

var svgstore	= require('gulp-svgstore');
var svgmin		= require('gulp-svgmin');
var svg2png		= require('gulp-svg2png');

var replace		= require('gulp-replace');
var cheerio		= require('gulp-cheerio');

var mainfiles	= bower();

// Asset filter variables
var cssfilter 	= filter('*.css')
var scssfilter 	= filter('*.scss')
var jsfilter 	= filter('*.js')
var fontfilter 	= filter(['*.eot','*.svg','*.ttf','*.woff'])


// CSS components task
gulp.task('cssassets', function() {

	return gulp.src(mainfiles)

		.pipe(cssfilter)
		.pipe(rename({
			prefix: "_",
			extname: ".scss"
		}))
		.pipe(gulp.dest('_sass'))

});

// SASS components task
gulp.task('sassassets', function() {

	return gulp.src(mainfiles)

		.pipe(scssfilter)
		.pipe(replace("font-url('octicons", "url('/fonts/octicons"))
		.pipe(rename({
			prefix: "_"
		}))
		.pipe(gulp.dest('_sass'))

});

	// Styles task
	gulp.task('styleassets', ['cssassets', 'sassassets'])


// JavaScript components task
gulp.task('jsassets', function() {

	mainfiles.push('_scripts/*.js')

	return gulp.src(mainfiles)

		.pipe(jsfilter)
		.pipe(uglify())
		.pipe(gulp.dest('js'))

});

// SVG icons task
gulp.task('svgicons', function () {

	return gulp.src('_icons/*.svg')

		.pipe(svgmin())
		.pipe(svgstore({ fileName: 'icons.svg', inlineSvg: true }))
		.pipe(cheerio(function ($) {
			$('svg').attr('style', 'display:none');
			$('path').attr('fill', null);
		}))
		.pipe(gulp.dest('_includes'))

});

// PNG icons task
gulp.task('pngicons', function () {

	return gulp.src('_icons/*.svg')

		.pipe(svg2png())
		.pipe(rename({extname: '.png'}))
		.pipe(gulp.dest('assets/icons'))

});

// Octicons icon fonts
gulp.task('fonticons', function() {

	return gulp.src(mainfiles)

		.pipe(fontfilter)
		.pipe(gulp.dest('fonts'))

});

	// Icons task
	gulp.task('icons', ['svgicons', 'pngicons','fonticons'])


// All assets task
gulp.task('assets', ['styleassets', 'icons', 'jsassets'])
