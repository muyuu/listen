module.exports = (grunt) ->
  install:
    options:
      targetDir: 'docs/assets/libs'
      layout: 'byComponent'
      install: true
      verbose: false
      cleanTargetDir: true
      cleanBowerDir: true
