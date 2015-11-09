angular.module 'bcRailsNg'
  .config ($stateProvider, $urlRouterProvider, $locationProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'projects',
        url: '/projects'
        templateUrl: 'app/projects/projects.html'
        controller: 'ProjectsController'
        controllerAs: 'projects'

    $urlRouterProvider.otherwise '/'
    $locationProvider.html5Mode true
