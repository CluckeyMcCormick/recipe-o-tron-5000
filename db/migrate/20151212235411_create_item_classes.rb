class CreateItemClasses < ActiveRecord::Migration
  def change
    create_table :item_classes do |t|
      t.string :name
      t.references :mod_pack, index: true, foreign_key: true
      
      t.timestamps null: false
    end
  end
end
