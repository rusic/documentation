// Create gulp variables
var gulp = require('gulp');
var bower = require('main-bower-files');
var rename = require('gulp-rename');
var filter = require('gulp-filter');

// Asset filter variables
var cssfilter = filter('*.css')
var fontfilter = filter(['*', '!*.css'])

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

// Font components task
gulp.task('fonts', function() {

	return gulp.src(bower())

		.pipe(fontfilter)
		.pipe(gulp.dest('fonts'));

});

// All assets task
gulp.task('assets', ['fonts', 'css'])
