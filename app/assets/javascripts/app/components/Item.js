var Item =  {
  templateUrl: 'app/views/item.html',
  bindings: {
    id: '='
  },
  controller: function (RecipesService) {
    var ctrl = this;
    RecipesService
      .getRecipe(this.id)
      .then(function (res) {
        ctrl.data = res.data;
      })
  },
  controllerAs: 'item'
};

angular 
  .module('app')
  .component('item', Item)