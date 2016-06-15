class Typedefinitiondiseaseneighbor < ActiveRecord::Base
	attr_accessible :neighbor
	belongs_to :typedefinitiondisease
end
