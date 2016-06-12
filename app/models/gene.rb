class Gene < ActiveRecord::Base
	attr_accessible :name :accesionno :sequence :chromosomelocation :url

	has_and_belongs_to_many :protein

end
