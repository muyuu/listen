module.exports = (grunt) ->
  compileJoined:
    options:
      sourceMap: true
      bare: true
    files:
      'docs/assets/js/app.js': 'src/coffee/**/*.coffee'

