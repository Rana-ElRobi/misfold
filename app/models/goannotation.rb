class Goannotation < ActiveRecord::Base
	attr_accessible :annotate
	belongs_to :go

end
