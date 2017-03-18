class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show, :update, :destroy]

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
    if @recipe.save
      render json: @recipe, status: 201
    end
  end

  def destroy
    @recipe.destroy
    @recipes = Recipe.all
    render json: @recipes
  end

  private

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :ingredients, :instruction, :food_type, :time_taken)
  end
end
