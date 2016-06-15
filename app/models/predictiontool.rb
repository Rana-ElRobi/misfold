class Predictiontool < ActiveRecord::Base
	attr_accessible :name

	has_and_belongs_to_many :protein
	has_many :conservedregion
end
