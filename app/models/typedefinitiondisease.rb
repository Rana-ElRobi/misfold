class Typedefinitiondisease < ActiveRecord::Base
	attr_accessible :typedefinitiondiseaseid :name :neighbors :definition

	belongs_to :diseaseontology
	has_many :typedefinitiondiseaseneighbor
end
