class OutputQuantity < ActiveRecord::Base
	belongs_to :recipe
	belongs_to :item

	has_and_belongs_to_many :mod_packs
end
