function RecipesService($http) {
  this.getRecipes = function () {
    return $http.get('/recipes.json');
  }
  this.getRecipe = function (id) {
    return $http.get('/recipes/' + id + '.json')
  }
}

angular
  .module('app')
  .service('RecipesService', RecipesService)