# Require
gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')
reload = browserSync.reload
path = global.path

# Task
gulp.task 'script', ->
    gulp.src path.js + "**/*.js"
        .pipe $.order([
            "#{path.js}vendor/jquery.js",
            "#{path.js}vendor/**/*.js",
            "#{path.js}*.js"
        ])
        .pipe $.concat('app.min.js')
        .pipe $.uglify()
        .pipe gulp.dest(path.js)
        .pipe $.size()
        .pipe reload(stream: true)
