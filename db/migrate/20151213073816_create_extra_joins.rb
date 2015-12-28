class CreateExtraJoins < ActiveRecord::Migration
  def change
	create_join_table :mod_packs, :mods
	create_join_table :mod_packs, :items
	create_join_table :mod_packs, :output_quantities
	create_join_table :mod_packs, :input_quantities
	create_join_table :mod_packs, :recipes
  end
end
