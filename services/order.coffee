'use strict'

angular.module 'pta'
  .factory 'Order', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'orders/:orderUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      },
      create: {
        method: 'POST',
        params: {
          'basket': '@basketUri',
          'paymentmethod': '@paymentmethodUri'
        }
      }
    }
