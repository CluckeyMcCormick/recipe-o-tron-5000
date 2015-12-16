class ModPack < ActiveRecord::Base
	# Regular Associaitons
	has_and_belongs_to_many :items
	has_and_belongs_to_many :recipes
	has_and_belongs_to_many :item_classes
	has_and_belongs_to_many :mods
	has_and_belongs_to_many :process_types
	
	# Rich Associations
	has_and_belongs_to_many :input_quantities
	has_and_belongs_to_many :output_quantities
	has_and_belongs_to_many :item_class_inclusions
	has_and_belongs_to_many :process_type_inclusions
end
