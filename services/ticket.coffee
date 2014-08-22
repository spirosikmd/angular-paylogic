'use strict'

angular.module 'pta'
  .factory 'Ticket', ($resource, baseUrl) ->
    $resource baseUrl + 'tickets/:ticketUid', {ticketUid:'@id'}, {
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
