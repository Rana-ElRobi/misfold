class Relationship < ActiveRecord::Base
 	attr_accessible :relationshipid :name :type
 	belongs_to :proteinontology
 	has_many :relationshipneighbor
end
