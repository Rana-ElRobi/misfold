class CreateDisjointFroms < ActiveRecord::Migration
  def change
    create_table :disjoint_froms do |t|
      t.string :disjointid
      t.string :name
      t.string :neighbors

      t.timestamps null: false
    end
  end
end
