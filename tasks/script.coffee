# Require
gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')
reload = browserSync.reload
path = global.path

# Task
gulp.task 'script', ->
    gulp.src ([
            "!#{path.js}vendor/*.min.js",
            "#{path.js}vendor/**/*.js",
            "#{path.js}*.js"
        ])
        .pipe $.concat('app.min.js')
        .pipe $.uglify()
        .pipe gulp.dest(path.js)
        .pipe $.size()
        .pipe reload(stream: true)
