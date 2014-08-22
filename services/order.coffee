'use strict'

angular.module 'pta'
  .factory 'Order', ($resource, baseUrl) ->
    $resource baseUrl + 'orders/:orderUid', {orderUid:'@orderUid'}, {
      get: {
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
