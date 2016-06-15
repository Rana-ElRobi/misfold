class Typedefinitionproteinneighbor < ActiveRecord::Base
	attr_accessible :neighbor
	belongs_to :typedefinitionprotein
end
