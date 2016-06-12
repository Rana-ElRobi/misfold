class Function < ActiveRecord::Base
	attr_accessible :description
	
	belongs_to :protein	
end
