class CreateDiseasesynonyms < ActiveRecord::Migration
  def change
    create_table :diseasesynonyms do |t|
      t.string :synonym

      t.timestamps null: false
    end
  end
end
