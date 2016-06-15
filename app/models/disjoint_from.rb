class DisjointFrom < ActiveRecord::Base


	belongs_to :proteinontology
	has_many :disjointneighbor
end
