class Twodstructureregion < ActiveRecord::Base
	attr_accessible  :start :end :regiontype

	belongs_to :protein
end
