class CreateItemClasses < ActiveRecord::Migration
  def change
    create_table :item_classes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
