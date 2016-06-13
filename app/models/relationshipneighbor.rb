class Relationshipneighbor < ActiveRecord::Base
	attr_accessible :neighbor
	belongs_to :relationship
end
