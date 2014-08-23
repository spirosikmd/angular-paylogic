'use strict'

angular.module 'pta'
  .factory 'Product', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'products'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
