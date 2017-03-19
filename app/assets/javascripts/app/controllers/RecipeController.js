function RecipeController(recipe) {
  this.data = recipe.data
}

angular
  .module('app')
  .controller('RecipeController', RecipeController)