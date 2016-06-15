class Organ < ActiveRecord::Base
	attr_accessor :name
	has_and_belongs_to_many :disease
end
