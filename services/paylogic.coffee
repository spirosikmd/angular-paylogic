'use strict'

angular.module 'pta'
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
