class Diseasefamily < ActiveRecord::Base
 	attr_accessible :familyid :familyname

 	belongs_to :disease
	has_one :diseaseclass
end
