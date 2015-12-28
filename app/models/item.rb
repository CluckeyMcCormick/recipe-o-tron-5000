class Item < ActiveRecord::Base
	belongs_to :mod

	has_many :item_class_inclusions
	has_many :input_quantities
	has_many :output_quantities

	has_many :item_classes, through: :item_class_inclusions
	
	has_and_belongs_to_many :mod_packs

	def to_label
	"#{name}"
	end
end
