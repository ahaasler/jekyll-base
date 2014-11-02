module.exports = (grunt) ->

  grunt.initConfig
    bower:
      install:
        options:
          cleanup: true
          layout: 'byComponent'
    jekyll:
      options:
        bundleExec: true
      build:
        options:
          dest: '_site'
    watch:
      bower:
        files: ['bower.json']
        tasks: ['build']
      jekyll:
        files: ['_posts/**/*.*', '_layouts/**/*.*', '_includes/**/*.*', 'css/main.scss', '_sass/**/*.scss']
        tasks: ['jekyll']
    browserSync:
      files:
        src: ['_site/css/*.css', '_site/**/*.html']
      options:
        watchTask: true
        ghostMode:
          clicks: true
          scroll: true
          links: true
          forms: true
        server:
          baseDir: '_site'
        port: 4000

  grunt.loadNpmTasks 'grunt-bower-task'
  grunt.loadNpmTasks 'grunt-browser-sync'
  grunt.loadNpmTasks 'grunt-contrib-watch'
  grunt.loadNpmTasks 'grunt-jekyll'

  grunt.registerTask 'build', ['bower', 'jekyll']
  grunt.registerTask 'serve', ['build', 'browserSync', 'watch']
  grunt.registerTask 'default', ['serve']
