class Go < ActiveRecord::Base
	attr_accessible  :goid :gourl :godescription 

	belongs_to :protein
	has many :goannotation

end
