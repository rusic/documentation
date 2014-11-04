// Create gulp variables
var gulp 	= require('gulp');
var bower 	= require('main-bower-files');
var rename 	= require('gulp-rename');
var filter 	= require('gulp-filter');

// Asset filter variables
var cssfilter 	= filter('*.css')
var scssfilter 	= filter('*.scss')
var fontfilter 	= filter(['*.eot', '*.svg', '*.ttf', '.woff', '.otf'])
var jsfilter 	= filter('*.js')

// CSS components task
gulp.task('css', function() {

	return gulp.src(bower())

		.pipe(cssfilter)
		.pipe(rename({
			prefix: "_",
			extname: ".scss"
		}))
		.pipe(gulp.dest('_sass'));

});

// SASS components task
gulp.task('sass', function() {

	return gulp.src(bower())

		.pipe(scssfilter)
		.pipe(rename({
			prefix: "_"
		}))
		.pipe(gulp.dest('_sass'));

});

// Fonts components task
gulp.task('fonts', function() {

	return gulp.src(bower())

		.pipe(fontfilter)
		.pipe(gulp.dest('fonts'));

});

// JavaScript components task
gulp.task('js', function() {

	return gulp.src(bower())

		.pipe(jsfilter)
		.pipe(gulp.dest('js'));

});

// All assets task
gulp.task('assets', ['css', 'sass', 'fonts', 'js'])
