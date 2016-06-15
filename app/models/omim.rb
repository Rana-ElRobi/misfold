class Omim < ActiveRecord::Base
  belongs_to :disease, dependent: :destroy
end
