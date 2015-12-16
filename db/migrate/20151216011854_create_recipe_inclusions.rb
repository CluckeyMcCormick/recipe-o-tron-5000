class CreateRecipeInclusions < ActiveRecord::Migration
  def change
    create_table :recipe_inclusions do |t|
      t.references :process_type, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
