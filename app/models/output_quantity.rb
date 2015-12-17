class OutputQuantity < ActiveRecord::Base

	enum output_group: [:A, :B, :C, :D, :E, :F]

	belongs_to :recipe
	belongs_to :item

	has_and_belongs_to_many :mod_packs
end
