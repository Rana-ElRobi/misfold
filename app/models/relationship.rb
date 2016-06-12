class Relationship < ActiveRecord::Base
 	attr_accessible :relationshipid :name :neighbors :type
 	belongs_to :proteinontology
end
