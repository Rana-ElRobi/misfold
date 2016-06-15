class CreateIsaproneighbors < ActiveRecord::Migration
  def change
    create_table :isaproneighbors do |t|
      t.string :neighbor

      t.timestamps null: false
    end
  end
end
