class Posttranslationalmodification < ActiveRecord::Base
	attr_accessible :keywords :description :position :lenght :featurekey

	belongs_to :protein
	has_many :keyword
end
