class Omim < ActiveRecord::Base
	attr_accessible :omimid :omimurl :moodofinheritnce
	belongs_to :disease
end
