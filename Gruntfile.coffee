module.exports = (grunt) ->

  grunt.initConfig
    jekyll:
      options:
        bundleExec: true
      build:
        options:
          dest: '_site'
      serve:
        options:
          serve: true
          watch: true

  grunt.loadNpmTasks 'grunt-jekyll'

  grunt.registerTask 'build', ['jekyll:build']
  grunt.registerTask 'serve', ['jekyll']
  grunt.registerTask 'default', ['serve']
