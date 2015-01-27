# Require
gulp = require('gulp')
$ = require('gulp-load-plugins')()
path = global.path

# Task
gulp.task 'image', ->
    opts = { optimiationLevel: 5, progressive: true, interlace: true}

    gulp.src path.img + '*'
        .pipe($.imagemin(opts))
        .pipe gulp.dest path.assets
        .pipe $.size()