'use strict'

angular.module 'angular-paylogic'
  .factory 'Merchant', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'merchants/:merchantUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      }
    }
