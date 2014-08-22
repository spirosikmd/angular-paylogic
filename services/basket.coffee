'use strict'

angular.module 'pta'
  .factory 'Basket', ($resource, baseUrl) ->
    $resource baseUrl + 'baskets/:basketUid', {basketUid:'@basketUid'}, {
      get: {
        method: 'GET',
        isArray: true
      },
      create: {
        method: 'POST'
      },
      confirm: {
        method: 'POST',
        params: {
          basketUid: '@basketUid'
        },
        url: baseUrl + 'baskets/:basketUid/confirm'
      },
      cancel: {
        method: 'POST',
        params: {
          basketUid: '@basketUid'
        },
        url: baseUrl + 'baskets/:basketUid/cancel'
      }
    }
