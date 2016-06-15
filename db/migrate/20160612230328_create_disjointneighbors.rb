class CreateDisjointneighbors < ActiveRecord::Migration
  def change
    create_table :disjointneighbors do |t|
      t.string :neighbor

      t.timestamps null: false
    end
  end
end
