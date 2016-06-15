class Pathology < ActiveRecord::Base
	attr_accessible :grosspicture :microscopicpicture

	belongs_to :disease
end
