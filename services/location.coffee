'use strict'

angular.module('pta')
  .factory 'Location', ($resource, baseUrl) ->
    $resource baseUrl + 'locations', {}, {
      get: {
        method: 'GET',
        isArray: true
      }
    }
