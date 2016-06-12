class IsAdisease < ActiveRecord::Base
	attr_accessible :isadiseaseid :name :neighbors 

	belongs_to :diseaseontology
end
