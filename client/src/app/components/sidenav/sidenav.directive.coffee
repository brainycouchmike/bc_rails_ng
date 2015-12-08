angular.module 'bcRailsNg'
  .directive 'brainySidenav', ->

    SidenavController = (moment, $state, $log, $location) -> # (moment, Page, $log) ->
      'ngInject'
      sn = this
      sn.routes   = $state.get().slice(1) # get states, strip off abstract parent
      sn.location = $location
      sn.navigate = (name) ->
        $state.go name
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/sidenav/sidenav.html'
      controller: SidenavController
      controllerAs: 'sn'
      bindToController: true
