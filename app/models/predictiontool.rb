class Predictiontool < ActiveRecord::Base


	has_and_belongs_to_many :protein
	has_many :conservedregion
end
