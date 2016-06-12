class Relationship < ActiveRecord::Base
 	attr_accessible :relationshipid :name :neighbors :type
 	belongs_to :proteinontology
 	has_many :relationshipneighbor
end
