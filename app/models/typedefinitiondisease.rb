class Typedefinitiondisease < ActiveRecord::Base


	belongs_to :diseaseontology
	has_many :typedefinitiondiseaseneighbor
end
