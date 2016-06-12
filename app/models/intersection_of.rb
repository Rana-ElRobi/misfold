class IntersectionOf < ActiveRecord::Base
	attr_accessible :intersectionid :name :neighbors :type
 	belongs_to :proteinontology
 	has_many :intersectionneighbor

end
