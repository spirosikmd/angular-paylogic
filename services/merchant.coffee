'use strict'

angular.module 'pta'
  .factory 'Merchant', ($resource, baseUrl) ->
    $resource baseUrl + 'merchants', {}, {
      get: {
        method: 'GET',
        isArray: true
      }
    }
