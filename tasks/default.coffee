# Require
gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')
reload = browserSync.reload
path = global.path

# Task
gulp.task 'build', ['sass','script','sprite','image']

gulp.task 'default', ['build'], ->
    browserSync
        server: {baseDir: path.server}
        notify: false

    gulp.watch path.refresh, reload
    gulp.watch "#{path.img}icons/@2x/*.png", ['sprite']
    gulp.watch "#{path.img}*", ['image']
    gulp.watch "#{path.scss}**/*.scss", ['sass']
    gulp.watch "#{path.js}**/*.js", ['script']