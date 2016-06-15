class Conservedregion < ActiveRecord::Base
	attr_accessible  :name :score :start :end :type

	belongs_to :predictiontool
end
