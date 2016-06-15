class AddDiseaseKeyToReference < ActiveRecord::Migration
  def change
  	add_column :references, :diseaseid, :integer
  end
end
