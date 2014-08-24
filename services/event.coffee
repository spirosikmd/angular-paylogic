'use strict'

angular.module 'pta'
  .factory 'Event', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'events/:eventUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
