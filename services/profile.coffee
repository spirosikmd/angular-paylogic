'use strict'

angular.module 'pta'
  .factory 'Profile', ($resource, baseUrl) ->
    $resource baseUrl + 'profiles', {}, {
      get: {
        method: 'GET',
        isArray: true
      }
      create: {
        method: 'POST'
      }
      update: {
        method: 'PUT',
        params: {
          profileUid: '@profileUid',
          profileRevision: '@profileRevision'
        },
        url: baseUrl + 'profiles/:profileUid/revisions/:profileRevision',
      }
    }
