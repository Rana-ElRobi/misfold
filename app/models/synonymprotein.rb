class Synonymprotein < ActiveRecord::Base
	attr_accessible :synonymname
	belongs_to :proteinontology
end
