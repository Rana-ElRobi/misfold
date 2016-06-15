class Pathway < ActiveRecord::Base
	attr_accessible  :pathwayid :pathwayurl

	belongs_to :protein
end
