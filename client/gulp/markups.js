'use strict';

var path = require('path');
var gulp = require('gulp');
var conf = require('./conf');

var haml = require('hamljs');

var browserSync = require('browser-sync');

var $ = require('gulp-load-plugins')();

gulp.task('markups', function() {
  function renameToHtml(path) {
    path.extname  = '.html';
    path.basename = path.basename.substr(0, path.basename.indexOf('.html'));
  }

  return gulp.src(path.join(conf.paths.src, '/app/**/*.haml'))
    .pipe($.consolidate('haml')).on('error', conf.errorHandler('Haml'))
    .pipe($.rename(renameToHtml))
    .pipe(gulp.dest(path.join(conf.paths.tmp, '/serve/app/')))
    .pipe(browserSync.reload({ stream: true }));
});
