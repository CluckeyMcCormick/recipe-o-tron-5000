class ItemClass < ActiveRecord::Base
	has_many :item_class_inclusions
	has_many :process_type_inclusions

	has_and_belongs_to_many :mod_packs

	def to_label
	"#{name}"
	end
end
