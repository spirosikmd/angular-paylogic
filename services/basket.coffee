'use strict'

angular.module 'pta'
  .factory 'Basket', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'baskets/:basketUid'
    $resource resourceUrl, {basketUid: '@basketUid'}, {
      filter: {
        method: 'GET',
        isArray: true
      }
      create: {
        method: 'POST'
      },
      update: {
        method: 'PUT'
      }
    }
