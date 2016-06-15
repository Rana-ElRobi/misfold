class Reference < ActiveRecord::Base


has_and_belongs_to_many :protein
has_and_belongs_to_many :disease
has_and_belongs_to_many :misfold

end
