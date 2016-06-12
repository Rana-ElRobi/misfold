class CreateDiseaseontologies < ActiveRecord::Migration
  def change
    create_table :diseaseontologies do |t|
      t.string :doid
      t.string :name
      t.string :alt_id
      t.string :definition
      t.array :subset
      t.array :synonym
      t.array :xref
      t.string :created_by
      t.string :creation_date
      t.string :url

      t.timestamps null: false
    end
  end
end
