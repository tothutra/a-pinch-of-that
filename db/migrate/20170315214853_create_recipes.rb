class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instruction
      t.string :food_type, default: "generally edible"
      t.string :time_taken, default: "anything goes"

      t.timestamps
    end
  end
end
