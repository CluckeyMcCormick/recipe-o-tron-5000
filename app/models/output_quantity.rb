class OutputQuantity < ActiveRecord::Base
	belongs_to :recipes
	belongs_to :items

	has_and_belongs_to_many :mod_packs
end
