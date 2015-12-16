class ProcessTypeInclusion < ActiveRecord::Base
	belongs_to :process_type
	belongs_to :item_class

	has_and_belongs_to_many :mod_packs
end
