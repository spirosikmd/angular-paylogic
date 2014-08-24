'use strict'

angular.module 'angular-paylogic'
  .factory 'Ticket', ($resource, baseUrl) ->
    resourceUrl = baseUrl + 'tickets/:ticketUid'
    $resource resourceUrl, {}, {
      filter: {
        method: 'GET',
        isArray: true
      },
      create: {
        method: 'POST'
      },
      createMany: {
        method: 'POST',
        isArray: true
      },
      update: {
        method: 'PUT'
      }
    }
