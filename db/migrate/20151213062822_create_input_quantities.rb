class CreateInputQuantities < ActiveRecord::Migration
  def change
    create_table :input_quantities do |t|
      t.integer :count
      t.references :recipe, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true
      t.references :mod_pack, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
