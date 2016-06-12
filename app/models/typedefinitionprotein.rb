class Typedefinitionprotein < ActiveRecord::Base
	attr_accessible :typedefinitionproteinid :name :neighbors :synonym :definition :comment :is_transitive :is_obsolete
	
	belongs_to :proteinontology
end
