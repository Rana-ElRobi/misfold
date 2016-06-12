class Reference < ActiveRecord::Base
attr_accessible :referenceid :title :url :retrievablereference :clinicalreference :otherresource

has_and_belongs_to_many :protein
has_and_belongs_to_many :disease
has_and_belongs_to_many :misfold
end
