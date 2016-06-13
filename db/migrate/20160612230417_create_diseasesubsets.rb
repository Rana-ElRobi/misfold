class CreateDiseasesubsets < ActiveRecord::Migration
  def change
    create_table :diseasesubsets do |t|
      t.string :subset

      t.timestamps null: false
    end
  end
end
