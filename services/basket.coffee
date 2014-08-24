'use strict'

angular.module 'angular-paylogic'
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
