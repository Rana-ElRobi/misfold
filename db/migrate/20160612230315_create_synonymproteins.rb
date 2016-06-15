class CreateSynonymproteins < ActiveRecord::Migration
  def change
    create_table :synonymproteins do |t|
      t.string :synonymname

      t.timestamps null: false
    end
  end
end
