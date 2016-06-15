class AddDiseaseidToPathology < ActiveRecord::Migration
  def change
  	add_column :pathologies, :diseaseid, :integer
  end
end
