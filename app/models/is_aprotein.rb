class IsAprotein < ActiveRecord::Base

	belongs_to :proteinontology
	has_many :isaproneighbor
end
