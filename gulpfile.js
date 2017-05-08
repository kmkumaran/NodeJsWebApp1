var zip = require("gulp-zip");
var gulp = require('gulp');
var typescript = require('gulp-tsc');

gulp.task("deploy", function () {
    return gulp.src(["**"])
        .pipe(zip("deploy.zip"))
        .pipe(gulp.dest("zip"));
});

//gulp.task('deploy', () => {
//return gulp.src('**')
//		.pipe(zip('archive.zip'))
//		.pipe(gulp.dest('./'));
//});

const fs = require('fs');

gulp.task('default', function () {
    gulp.src(['**/*.ts', '!**/node_modules/**'])
    .pipe(typescript())
    .pipe(gulp.dest('./'))
});
