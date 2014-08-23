'use strict'

angular.module 'pta'
  .factory 'PaymentMethod', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'paymentmethods'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      },
      quote: {
        method: 'GET',
        isArray: true,
        params: {
          basket: '@basket'
        },
        url: resourceUrl + '/quotes'
      }
    }
