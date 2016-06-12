class CreatePdbs < ActiveRecord::Migration
  def change
    create_table :pdbs do |t|
      t.string :id
      t.string :name
      t.string :identificationmethod
      t.sting :url

      t.timestamps null: false
    end
  end
end
