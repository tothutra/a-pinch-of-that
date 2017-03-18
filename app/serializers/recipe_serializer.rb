class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instruction, :food_stype, :time_taken
end
