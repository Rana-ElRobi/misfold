class CreateOmims < ActiveRecord::Migration
  def change
    create_table :omims do |t|
      t.int :omimid
      t.string :omimurl
      t.string :moodofinheritnce

      t.timestamps null: false
    end
  end
end
