class CreateExtraJoins < ActiveRecord::Migration
  def change
	create_join_table :mod_packs, :input_quantities
	create_join_table :mod_packs, :item_class_inclusions
	create_join_table :mod_packs, :item_classes
	create_join_table :mod_packs, :items
	create_join_table :mod_packs, :mods
	create_join_table :mod_packs, :output_quantities
	create_join_table :mod_packs, :process_type_inclusions
	create_join_table :mod_packs, :process_types
	create_join_table :mod_packs, :recipes
  end
end
