class RecipesController < ApplicationController
  before_action :find_recipe, only: [:show]

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

  def create
    @recipe = Recipe.create()
  end

  def update
    
  end

  def find_recipe
    @recipe = Recipe.find(params[:id])
  end
end
