class Disjointneighbor < ActiveRecord::Base
	attr_accessible :neighbor
	belongs_to :disjoint_from
end
