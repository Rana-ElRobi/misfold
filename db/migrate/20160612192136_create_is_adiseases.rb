class CreateIsAdiseases < ActiveRecord::Migration
  def change
    create_table :is_adiseases do |t|
      t.string :isadiseaseid
      t.string :name
      t.array :neighbors

      t.timestamps null: false
    end
  end
end