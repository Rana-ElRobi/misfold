class Proteinname < ActiveRecord::Base
	attr_accessible :name :type :isprimary

	belongs_to :protein
end
