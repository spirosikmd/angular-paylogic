'use strict'

angular.module 'pta'
  .factory 'Ticket', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'tickets/:ticketUid'
    $resource resourceUrl, {ticketUid:'@ticketUid'}, {
      get: {
        method: 'GET',
        isArray: true,
      },
      buyMultiple: {
        method: 'POST',
        isArray: true
      },
      buySingle: {
        method: 'POST'
      }
      cancel: {
        method: 'DELETE'
      }
    }
