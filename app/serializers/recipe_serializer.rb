class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instruction, :food_type, :time_taken
end
