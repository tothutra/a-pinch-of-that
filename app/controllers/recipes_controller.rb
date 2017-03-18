class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :update, :destroy]
  validates :type, inclusion: {
    in: VALID_TYPE,
    message: "That doesn't sound like food!"
  }
  validate :time_taken, inclusion: {
    in: VALID_TIME_TAKEN,
    message: "Don'try to fool me"
  }

  VALID_TYPE = [
    "generally edible", 
    "sweet", 
    "savoury"
  ]
  VALID_TIME_TAKEN = [
    "however long is fine", 
    "quick and easy", 
    "yummy and ready within the next 2 hours", 
    "I don't care how long it takes"
  ]

  def index
    @recipes = Recipe.all
    respond_to do |format|
      format.json { render json: @recipes }
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    respond_to do |format|
      format.json { render json: @recipe }
    end    
  end

  def new
    
  end

  def create
    @recipe = Recipe.create(recipe_params)
    if @recipe.save
      render json: @recipe, status: 201
    end
  end

  def update
    @recipe.update(recipe_params)
  end

  def destroy
    @recipe.destroy
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instruction, :type, :time_taken)
  end
end
