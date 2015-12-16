class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :basic_item
      t.references :mod, index: true, foreign_key: true
      t.references :mod_pack, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
