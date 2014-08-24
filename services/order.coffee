'use strict'

angular.module 'angular-paylogic'
  .factory 'Order', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'orders/:orderUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      },
      create: {
        method: 'POST'
      }
    }
