angular.module 'bcRailsNg'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'pages',
        url: '/pages'
        templateUrl: 'app/pages/pages.html.html'
        controller: 'PagesController'

    $urlRouterProvider.otherwise '/'
