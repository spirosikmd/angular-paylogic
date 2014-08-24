'use strict'

angular.module 'angular-paylogic'
  .factory 'PaymentMethod', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'paymentmethods/:paymentmethodUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      },
      quote: {
        method: 'GET',
        isArray: true,
        url: resourceUrl + '/quotes'
      }
    }
