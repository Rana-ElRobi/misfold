class IntersectionOf < ActiveRecord::Base

 	belongs_to :proteinontology
 	has_many :intersectionneighbor

end
