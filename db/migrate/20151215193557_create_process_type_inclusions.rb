class CreateProcessTypeInclusions < ActiveRecord::Migration
  def change
    create_table :process_type_inclusions do |t|
      t.references :process_type, index: true, foreign_key: true
      t.references :item_class, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
