class CreateDiseasefamilies < ActiveRecord::Migration
  def change
    create_table :diseasefamilies do |t|
      t.string :familyid
      t.string :familyname

      t.timestamps null: false
    end
  end
end
