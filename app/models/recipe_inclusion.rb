class RecipeInclusion < ActiveRecord::Base
	belongs_to :process_type
	belongs_to :recipe

	has_and_belongs_to_many :mod_packs
end
