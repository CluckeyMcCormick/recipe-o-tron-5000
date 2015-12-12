class CreateProcessTypes < ActiveRecord::Migration
  def change
    create_table :process_types do |t|
      t.string :name
      t.text :description
      t.references :item_classes, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
