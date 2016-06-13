class Typedefinitionprotein < ActiveRecord::Base
	attr_accessible :typedefinitionproteinid :name :synonym :definition :comment :is_transitive :is_obsolete
	
	belongs_to :proteinontology

	has_many :typedefinitionproteinne
end
