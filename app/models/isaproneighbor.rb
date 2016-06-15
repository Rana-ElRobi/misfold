class Isaproneighbor < ActiveRecord::Base
	attr_accessible :neighbor
	belongs_to :is_aprotein	
end
