class DisjointFrom < ActiveRecord::Base
	attr_accessible :disjointid :name :neighbors

	belongs_to :proteinontology
end
