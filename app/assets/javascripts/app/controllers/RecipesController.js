function RecipesController(recipes) {
  this.recipes = recipes.data
}

angular
  .module('app')
  .controller('RecipesController', RecipesController)