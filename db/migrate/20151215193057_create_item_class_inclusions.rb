class CreateItemClassInclusions < ActiveRecord::Migration
  def change
    create_table :item_class_inclusions do |t|
      t.references :item, index: true, foreign_key: true
      t.references :item_class, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
