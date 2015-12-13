class Recipe < ActiveRecord::Base
	belongs_to :process_types

	has_and_belongs_to_many :mod_packs
end
