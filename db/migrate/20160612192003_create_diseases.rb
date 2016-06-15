class CreateDiseases < ActiveRecord::Migration
  def change
    create_table :diseases do |t|
      t.string :diseaseid
      t.string :icd10id
      t.string :pathogenesis
      t.string :clinicalpicture
      t.string :diseasename

      t.timestamps null: false
    end
  end
end
