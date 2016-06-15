class Diseaseontology < ActiveRecord::Base


	belongs_to :disease
	has_many :typedefinitiondisease
	has_one :is_adisease
	has_many :diseasesubset
	has_many :disxref
	has_many :diseasesynonym
end
