'use strict'

angular.module 'pta'
  .factory 'Location', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'locations'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
