class AddDiseaseidToProtein < ActiveRecord::Migration
  def change
  	add_column :proteins, :diseaseid, :integer
  end
end
