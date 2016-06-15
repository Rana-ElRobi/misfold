class Misfoldmodle < ActiveRecord::Base
	belongs_to :disease
	has_and_belongs_to_many :protein
	has_and_belongs_to_many :reference
end
