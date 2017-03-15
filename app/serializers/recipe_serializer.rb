class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredients, :instruction
end
