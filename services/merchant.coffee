'use strict'

angular.module 'pta'
  .factory 'Merchant', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'merchants/:merchantUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
