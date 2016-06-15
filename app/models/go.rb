class Go < ActiveRecord::Base

	belongs_to :protein
	has_many :goannotation

end
