# Require
gulp = require('gulp')
$ = require('gulp-load-plugins')()
browserSync = require('browser-sync')
sprite_directory = "icons/"
path = global.path

# Task
gulp.task "copyNoRetina", ->
    dest = path.assets + sprite_directory
    gulp.src path.assets + sprite_directory + "@2x/*.png"
    .pipe $.changed dest
    .pipe $.imageResize
        width: '50%',
        height: '50%',
        imageMagick: true
    .pipe gulp.dest dest


gulp.task 'sprite', ['copyNoRetina'], ->
    spriteData = null
    opts = { optimiationLevel: 5, progressive: true, interlace: true}

    # Sprite Retina
    gulp.src(path.assets + sprite_directory + '@2x/*.png')
    .pipe $.spritesmith
        imgName: "sprite@2x.png",
        cssName: "_sprite.scss"
    .img
    .pipe($.imagemin(opts))
    .pipe gulp.dest path.assets

    # Sprite
    spriteData = gulp.src(path.assets + sprite_directory + '*.png')
    .pipe $.spritesmith
        imgName: "sprite.png",
        cssName: "_sprite.scss"
        cssSpritesheetName: "sprite"
        cssTemplate: path.scss + "tools/_sprite.mustache"

    # Images
    spriteData.img
    .pipe($.imagemin(opts))
    .pipe gulp.dest(path.assets)

    # CSS
    spriteData.css.pipe gulp.dest(path.scss + "tools/")