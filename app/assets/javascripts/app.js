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
      })
      .state('recipe', {
        url: '/:id',
        templateUrl: 'app/views/recipe.html',
        controller: "RecipeController as recipe",
        resolve: {
          recipe: function (RecipesService, $stateParams) {
            return RecipesService.getRecipe($stateParams.id)
          }
        }
      })
    $urlRouterProvider.otherwise('/');
  })