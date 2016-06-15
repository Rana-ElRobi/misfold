class Externalsoform < ActiveRecord::Base
	attr_accessible :url

	belongs_to :protein
end
