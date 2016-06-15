class Posttranslationalmodification < ActiveRecord::Base


	belongs_to :protein
	has_many :keyword
end
