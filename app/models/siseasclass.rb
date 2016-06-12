class Siseasclass < ActiveRecord::Base
	attr_accessible :diseasclass

	belongs_to :diseasefamily
end
