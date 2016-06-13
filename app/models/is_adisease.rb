class IsAdisease < ActiveRecord::Base
	self.table_name = "is_adiseases"
	attr_accessor :isadiseaseid, :name  

	belongs_to :diseaseontology
	has_many :isadiseaseneighbor
end
