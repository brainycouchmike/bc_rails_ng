angular.module 'bcRailsNg'
  .directive 'acmeNavbar', ->

    NavbarController = (moment) -> # (moment, Page, $log) ->
      'ngInject'
      vm = this
      vm.relativeDate = moment(vm.creationDate).fromNow()
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
