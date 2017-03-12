angular
  .module("app", ['ui.router', 'templates'])
  .config(function($stateProvider, $urlRouteProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        templateURL: 'app/views/home.html',
        controller: ''
      });
    $urlRouteProvider.otherwise('/')
  })