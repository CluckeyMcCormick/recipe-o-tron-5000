class CreateModPacks < ActiveRecord::Migration
  def change
    create_table :mod_packs do |t|
      t.string :name
      t.references :mods, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
