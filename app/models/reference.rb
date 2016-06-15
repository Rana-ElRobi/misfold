class Reference < ActiveRecord::Base


has_and_belongs_to_many :protein
belongs_to :disease
has_and_belongs_to_many :misfold

end
