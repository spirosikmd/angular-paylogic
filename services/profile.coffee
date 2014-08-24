'use strict'

angular.module 'angular-paylogic'
  .factory 'Profile', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'profiles/:profileUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      },
      create: {
        method: 'POST'
      },
      update: {
        method: 'PUT'
      }
    }
