class CreateIsAdiseases < ActiveRecord::Migration
  def change
    create_table :is_adiseases do |t|
      t.string :isadiseaseid
      t.string :name
      

      t.timestamps null: false
    end
  end
end
