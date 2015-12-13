class ModPack < ActiveRecord::Base
	has_and_belongs_to_many :items
	has_and_belongs_to_many :recipes
	has_and_belongs_to_many :process_types
	has_and_belongs_to_many :input_quantities
	has_and_belongs_to_many :output_quantities
	has_and_belongs_to_many :item_classes
	has_and_belongs_to_many :mods
end
