class Transcriptmodificationregion < ActiveRecord::Base
	attr_accessible  :start :end :modification

	belongs_to :transcript
end
