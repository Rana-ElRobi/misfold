class CreateIsadiseaseneighbors < ActiveRecord::Migration
  def change
    create_table :isadiseaseneighbors do |t|
      t.string :neighbor

      t.timestamps null: false
    end
  end
end
