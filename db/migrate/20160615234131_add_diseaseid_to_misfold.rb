class AddDiseaseidToMisfold < ActiveRecord::Migration
  def change
  	add_column :misfoldmodles, :diseaseid, :integer
  	rename_column :misfoldmodles, :type, :cause
  end
end
