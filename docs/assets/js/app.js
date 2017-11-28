'use strict';
var listen;

listen = angular.module('listen', ['ngCookies', 'ngResource', 'ngSanitize', 'ngRoute']);

listen.controller('listCtrl', function($scope, $http, $sce) {
  $scope.trustSrc = function(src) {
    return $sce.trustAsResourceUrl(src);
  };
  return $scope.submit = function() {
    var uri;
    uri = "https://itunes.apple.com/search";
    return $http.jsonp(uri, {
      params: {
        country: 'jp',
        limit: 10,
        term: $scope.query,
        callback: 'JSON_CALLBACK'
      }
    }).success(function(data) {
      return $scope.apis = data;
    });
  };
});
