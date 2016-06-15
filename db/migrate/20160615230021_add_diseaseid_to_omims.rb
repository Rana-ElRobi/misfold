class AddDiseaseidToOmims < ActiveRecord::Migration
  def change
  	add_column :omims, :diseaseid, :integer
  end
end
