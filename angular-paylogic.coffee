'use strict'

angular.module 'angular-paylogic', [
  'ngResource',
  'base64'
]
  .run ($http, apiToken) ->
    $http.defaults.headers.common.Authorization = 'Basic ' + apiToken
  .service 'paylogic', (Basket, Event, Product, Profile, Ticket, Merchant, Order, PaymentMethod, Location) ->
    {
      baskets: Basket,
      events: Event,
      locations: Location,
      merchants: Merchant,
      orders: Order,
      paymentmethods: PaymentMethod,
      products: Product,
      profiles: Profile,
      tickets: Ticket
    }
