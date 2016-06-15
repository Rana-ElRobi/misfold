class Disease < ActiveRecord::Base
	has_and_belongs_to_many :protein
	has_and_belongs_to_many :misfold
	has_and_belongs_to_many :organ
	has_one :omim
	has_many :diseasefamily
	has_many :reference
	has_one :diseaseontology
end
