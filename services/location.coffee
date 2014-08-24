'use strict'

angular.module 'pta'
  .factory 'Location', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'locations/:locationUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
