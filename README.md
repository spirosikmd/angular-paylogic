angular-pta
===========

An [AngularJS](https://angularjs.org/) service that encapsulates the functionality provided by the
[Paylogic Ticketing API](https://doc.sandbox.paylogic.com/).

## Getting Started

``angular-pta`` requires [Bower](http://bower.io/) and [CoffeeScript](http://coffeescript.org/).

Run ``bower install`` from the root directory of the project to install all the dependencies.

Then compile the CoffeeScript files into one file with ``coffee --join angular-pta.js --compile **/*.coffee``.

The example will not work for the public (unfortunately..) as it requires basic authentication to access the API, and
credentials are not provided.
