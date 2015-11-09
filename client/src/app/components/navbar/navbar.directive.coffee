angular.module 'bcRailsNg'
  .directive 'acmeNavbar', ->

    NavbarController = (moment) -> # (moment, Page, $log) ->
      'ngInject'
      vm = this
      # "vm.creation" is avaible by directive option "bindToController: true"
      vm.relativeDate = moment(vm.creationDate).fromNow()
      # vm.pageData     = []
      # Page.query().then (allPages) ->
      #   angular.forEach allPages, (page) ->
      #     vm.pageData.push {title: page.pageTitle, handle: page.pageHandle}
      return

    directive =
      restrict: 'E'
      templateUrl: 'app/components/navbar/navbar.html'
      scope: creationDate: '='
      controller: NavbarController
      controllerAs: 'vm'
      bindToController: true
