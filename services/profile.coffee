'use strict'

angular.module 'pta'
  .factory 'Profile', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'profiles/:profileUid'
    $resource resourceUrl, {profileUid: '@profileUid'}, {
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
