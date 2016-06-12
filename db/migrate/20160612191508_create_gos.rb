class CreateGos < ActiveRecord::Migration
  def change
    create_table :gos do |t|
      t.string :goid
      t.string :gourl
      t.string :godescription
      t.array :goannotations

      t.timestamps null: false
    end
  end
end
