class IsAdisease < ActiveRecord::Base
	attr_accessible :isadiseaseid :name :neighbors 

	belongs_to :diseaseontology
	has_many :isadiseaseneighborz
end
