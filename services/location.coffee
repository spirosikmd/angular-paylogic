'use strict'

angular.module 'angular-paylogic'
  .factory 'Location', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'locations/:locationUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
