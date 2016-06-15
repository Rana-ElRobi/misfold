class Posttranslationalmodification < ActiveRecord::Base
	attr_accessible  :description :position :lenght :featurekey

	belongs_to :protein
	has_many :keyword
end
