class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.boolean :preferred_recipe
      t.references :process_types, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
