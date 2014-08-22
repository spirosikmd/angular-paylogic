'use strict'

angular.module 'pta'
  .factory 'Event', ($resource, apiToken, baseUrl) ->
    $resource baseUrl + 'events', {}, {
      get: {
        method: 'GET',
        isArray: true,
        headers: {
          'Authorization': 'Basic ' + apiToken
        }
      }
    }
