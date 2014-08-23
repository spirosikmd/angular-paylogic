'use strict'

angular.module 'pta'
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
        method: 'PUT',
        params: {
          profileUid: '@profileUid',
          profileRevisionUid: '@profileRevisionUid',
        },
        url: resourceUrl + '/revisions/:profileRevisionUid',
      }
    }
