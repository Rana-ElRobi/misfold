class Xrefprotein < ActiveRecord::Base
	attr_accessible :xrefname
	belongs_to :proteinontology
end
