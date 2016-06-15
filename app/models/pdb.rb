class Pdb < ActiveRecord::Base
	attr_accessible :pdbid :pdbname :pdbidentificationmethod :pdburl

	belongs_to :protein

end
