class CreateDisxrefs < ActiveRecord::Migration
  def change
    create_table :disxrefs do |t|
      t.string :xref

      t.timestamps null: false
    end
  end
end
