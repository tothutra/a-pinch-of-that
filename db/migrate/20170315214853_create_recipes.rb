class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :ingredients
      t.text :instruction
      t.integer :type
      t.integer :time_taken 

      t.timestamps
    end
  end
end
