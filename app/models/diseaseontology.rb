class Diseaseontology < ActiveRecord::Base
	attr_accessible :doid :name :alt :definition :subset :synonym :xref :created_by :creation_date :url

	belongs_to :disease
	has_many :typedefinitiondisease
	has_one :is_adisease
end
