class Item < ActiveRecord::Base
	belongs_to :mods

	has_and_belongs_to_many :mod_packs
	has_and_belongs_to_many :item_classes
end
