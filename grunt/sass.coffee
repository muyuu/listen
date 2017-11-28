module.exports = (grunt) ->
  compile:
    options:
      sourcemap: true
      style: 'expanded'
    files:
      'docs/assets/css/style.css': 'src/sass/style.sass'
  build:
    options:
      style: 'compressed'
    files:
      'docs/assets/css/style.css': 'src/sass/style.sass'
