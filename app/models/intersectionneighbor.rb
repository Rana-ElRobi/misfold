class Intersectionneighbor < ActiveRecord::Base
	attr_accessible :neighbor
	belongs_to :intersection_of
end
