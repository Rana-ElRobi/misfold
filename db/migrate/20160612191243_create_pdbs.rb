class CreatePdbs < ActiveRecord::Migration
  def change
    create_table :pdbs do |t|
      t.string :pdbid
      t.string :name
      t.string :identificationmethod
      t.string :url

      t.timestamps null: false
    end
  end
end
