class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :basic_item

      t.timestamps null: false
    end
  end
end
