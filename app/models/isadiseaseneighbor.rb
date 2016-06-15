class Isadiseaseneighbor < ActiveRecord::Base
	attr_accessible :neighbor
	belongs_to :is_adisease
end
