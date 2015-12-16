class ItemClassInclusion < ActiveRecord::Base
	belongs_to :item
	belongs_to :item_class

	has_and_belongs_to_many :mod_packs
end
