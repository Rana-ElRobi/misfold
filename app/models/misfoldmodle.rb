class Misfoldmodle < ActiveRecord::Base
	attr_accessible :misfoldid :type :refseqm :refseqp :nuclutidechange :molecularconsequence :aminoacidechange

	has_and_belongs_to_many :disease
	has_and_belongs_to_many :protein
	has_and_belongs_to_many :reference
end
