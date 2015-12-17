class CreateOutputQuantities < ActiveRecord::Migration
  def change
    create_table :output_quantities do |t|
      t.integer :count
      t.integer :probability
      t.integer :output_group
      t.references :recipe, index: true, foreign_key: true
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
