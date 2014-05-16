'use strict'

listen = angular.module('listen', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngRoute'
])

listen.controller 'listCtrl', ($scope, $http,$sce) ->
  $scope.trustSrc = (src)->
    $sce.trustAsResourceUrl(src)

  $scope.submit = ()->
    uri = "https://itunes.apple.com/search"
    $http.jsonp( uri,
      params :
        country: 'jp'
        limit: 10
        term : $scope.query
        callback : 'JSON_CALLBACK'
    ).success (data)->
      $scope.apis = data

