'use strict'

angular.module 'pta'
  .factory 'Event', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'events'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
