class CreateProcessTypes < ActiveRecord::Migration
  def change
    create_table :process_types do |t|
      t.string :name
      t.text :description
      
      t.timestamps null: false
    end
  end
end
