class Recipe < ActiveRecord::Base
	has_many :output_quantities
	has_many :input_quantities
	has_many :recipe_inclusions

	has_and_belongs_to_many :mod_packs
end
