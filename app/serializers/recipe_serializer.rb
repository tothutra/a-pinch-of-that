class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instruction, :type, :time_taken
end
