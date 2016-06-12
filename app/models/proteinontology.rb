class Proteinontology < ActiveRecord::Base
	attr_accessible :prid :name :definition :comment :synonym :namespace :xref :is_obsolete

	belongs_to :protein
	has_one :disjoint_from
	has_one :is_aprotein
	has_one :relationship
	has_one :intersection_of
	has_many :typedefinitionprotein
	has_many :synonymprotein
	has_many :xrefprotein
end
