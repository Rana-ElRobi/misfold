class Typedefinitionprotein < ActiveRecord::Base

	
	belongs_to :proteinontology

	has_many :typedefinitionproteinne
end
