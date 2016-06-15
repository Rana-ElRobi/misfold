class Transcript < ActiveRecord::Base


	belongs_to :protein
	has_many :transcriptmodificationregion
end
