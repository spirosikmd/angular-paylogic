'use strict'

angular.module 'pta'
  .factory 'Merchant', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'merchants'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
