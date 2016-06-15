class AddDiseaseidToOrgans < ActiveRecord::Migration
  def change
  	add_column :organs, :diseaseid, :integer
  end
end
