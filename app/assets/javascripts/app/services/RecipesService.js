function RecipesService($http) {
  this.getRecipes = function () {
    return $http.get('/recipes.json');
  }
}

angular
  .module('app')
  .service('RecipesService', RecipesService)