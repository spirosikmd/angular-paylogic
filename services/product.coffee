'use strict'

angular.module 'pta'
  .factory 'Product', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'products/:productUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
