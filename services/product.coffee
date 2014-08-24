'use strict'

angular.module 'angular-paylogic'
  .factory 'Product', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'products/:productUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
