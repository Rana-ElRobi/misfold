class CreateProteins < ActiveRecord::Migration
  def change
    create_table :proteins do |t|
      t.string :uniprot_id
      t.string :name
      t.integer :length
      t.text :sequence

      t.timestamps null: false
    end
  end
end
