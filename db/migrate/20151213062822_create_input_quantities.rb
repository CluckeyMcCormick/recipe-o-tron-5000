class CreateInputQuantities < ActiveRecord::Migration
  def change
    create_table :input_quantities do |t|
      t.integer :count
      t.references :recipes, index: true, foreign_key: true
      t.references :items, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
