class IsAdisease < ActiveRecord::Base
	attr_accessible :isadiseaseid :name  

	belongs_to :diseaseontology
	has_many :isadiseaseneighborz
end
