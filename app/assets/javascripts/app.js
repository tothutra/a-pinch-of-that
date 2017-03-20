angular
  .module("app", ['ui.router', 'templates'])
  .config(function($stateProvider, $urlRouterProvider) {
    $stateProvider
      .state('home', {
        url: '/',
        templateUrl: 'app/views/home.html',
        controller: 'RecipesController as recipes',
        resolve: {
          recipes: function (RecipesService) {
            return RecipesService.getRecipes()
          }
        }
      });
    $urlRouterProvider.otherwise('/');
  })