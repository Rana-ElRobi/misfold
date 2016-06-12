class IsAprotein < ActiveRecord::Base
	attr_accessible :isaproteinid :name :neighbors
	belongs_to :proteinontology
end
