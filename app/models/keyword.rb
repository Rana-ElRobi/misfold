class Keyword < ActiveRecord::Base
	attr_accessible :keyname
	belongs_to :posttranslationalmodification

end
