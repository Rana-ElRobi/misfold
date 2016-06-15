class Disxref < ActiveRecord::Base
	attr_accessible :xref
	belongs_to :diseaseontology
end
