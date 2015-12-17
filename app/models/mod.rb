class Mod < ActiveRecord::Base
	has_many :items

	has_and_belongs_to_many :mod_packs
end
