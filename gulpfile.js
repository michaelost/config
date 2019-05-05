const gulp = require('gulp');
const mocha = require('gulp-mocha');
const watch = require('gulp-watch');

 
gulp.task('default', () =>
  gulp.src('test.js', {read: false})
        // `gulp-mocha` needs filepaths so you can't have any plugins before it
    .pipe(mocha({reporter: 'nyan'}))
);

gulp.task('stream', function () {
    // Endless stream mode
  return watch('*.js', function () {
    gulp.src('test.js', {read: false})
      .pipe(mocha({reporter: 'nyan'}))
  });

});

