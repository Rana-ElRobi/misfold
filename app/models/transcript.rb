class Transcript < ActiveRecord::Base
	attr_accessible  :transcriptid :name :iscolonical :sequence :refrencesequence :alternativename

	belongs_to :protein
	has_many :transcriptmodificationregion
end
