'use strict'

angular.module 'pta'
  .factory 'Event', ($resource, baseUrl) ->
    $resource baseUrl + 'events', {}, {
      get: {
        method: 'GET',
        isArray: true
      }
    }
