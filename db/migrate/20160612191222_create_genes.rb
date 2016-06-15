class CreateGenes < ActiveRecord::Migration
  def change
    create_table :genes do |t|
      t.string :name
      t.string :accesionno
      t.text :sequence
      t.integer :chromosomelocation
      t.string :url

      t.timestamps null: false
    end
  end
end
