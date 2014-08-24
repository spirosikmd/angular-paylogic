'use strict'

angular.module 'angular-paylogic'
  .factory 'Event', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'events/:eventUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
