class Diseasesynonym < ActiveRecord::Base
	attr_accessible :synonym
	belongs_to :diseaseontology
end
