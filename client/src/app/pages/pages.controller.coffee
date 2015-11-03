# /client/src/app/controllers/pages.controller.coffee
angular.module "bcRailsNg"
  .controller "PagesController", ($timeout, webDevTec, toastr) ->
    'ngInject'
    vm = this