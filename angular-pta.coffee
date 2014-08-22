'use strict'

angular.module 'pta', [
  'ngResource',
  'base64'
]
  .run ($http, apiToken) ->
    $http.defaults.headers.common.Authorization = 'Basic ' + apiToken
