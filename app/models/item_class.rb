class ItemClass < ActiveRecord::Base
	has_and_belongs_to_many :mod_packs
	has_and_belongs_to_many :items
	has_and_belongs_to_many :process_types
end
