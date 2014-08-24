angular-pta
===========

An [AngularJS](https://angularjs.org/) service that encapsulates the functionality provided by the
[Paylogic Ticketing API](https://doc.sandbox.paylogic.com/).

## Getting Started

``angular-pta`` requires [Bower](http://bower.io/) and [CoffeeScript](http://coffeescript.org/).

Run ``bower install`` from the root directory of the project to install all the dependencies.

Then compile the CoffeeScript files into one file with ``coffee --join angular-paylogic.js --compile **/*.coffee``.

Start a web server, e.g. ``python -m SimpleHTTPServer`` from the root directory of the project and check the demo at
[http://localhost:8000/demo.html](http://localhost:8000/demo.html).

The example will not work for the public (unfortunately..) as it requires basic authentication to access the API, and
credentials are not provided.

## How to use

``angular-pta`` exposes a single ``paylogic`` component that can be used in the following way to interact
with resources.

```javascript
// Inject the pta module.
angular.module('app', ['angular-paylogic'])
  // Inject the paylogic service in a controller.
  .controller('mainController', function($scope, paylogic) {

    // Will return all, as no filtering was specified.
    $scope.events = paylogic.events.filter();

    $scope.product = paylogic.products.get({
      productUid: "30df20dd0b0e4bc58f0663edc8a4f640"
    });

});
```

There is a more [detailed example](https://github.com/spirosikmd/angular-pta/blob/master/demo.html) that goes through a
complete buying process.
