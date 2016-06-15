class Diseasesubset < ActiveRecord::Base
	attr_accessible :subset
	belongs_to :diseaseontology
end
