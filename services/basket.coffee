'use strict'

angular.module 'pta'
  .factory 'Basket', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'baskets/:basketUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
      create: {
        method: 'POST'
      },
      confirm: {
        method: 'POST',
        params: {
          basketUid: '@basketUid'
        },
        url: resourceUrl + '/confirm'
      },
      cancel: {
        method: 'POST',
        params: {
          basketUid: '@basketUid'
        },
        url: resourceUrl + '/cancel'
      }
    }
