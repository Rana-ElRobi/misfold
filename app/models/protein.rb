class Protein < ActiveRecord::Base
	attr_accessible :uniprot :name :length :sequence
	
	has_many :twodstructureregion
	has_many :function
	has_and_belongs_to_many :gene
	has_and_belongs_to_many :predictiontool
	has_many :pathway
	has_many :posttranslationalmodification
	has_many :go
	has_many :pdb
	has_many :transcript
	has_many :proteinname
	has_many :externalsoform
	has_one :proteinontology
	has_and_belongs_to_many :disease
	has_and_belongs_to_many :misfold

end
