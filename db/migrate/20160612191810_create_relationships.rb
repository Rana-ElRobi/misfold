class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :id
      t.string :name
      t.array :neighbors
      t.string :type

      t.timestamps null: false
    end
  end
end
