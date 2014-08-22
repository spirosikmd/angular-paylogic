'use strict'

angular.module 'pta'
  .service 'paylogic', (Basket, Event, Product, Profile, Ticket, Merchant) ->
    {
      baskets: Basket,
      events: Event,
      products: Product,
      profiles: Profile,
      tickets: Ticket,
      merchants: Merchant
    }
