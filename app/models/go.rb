class Go < ActiveRecord::Base
	attr_accessible  :goid :gourl :godescription :goannotations

	belongs_to :protein
	has many :goannotation

end
