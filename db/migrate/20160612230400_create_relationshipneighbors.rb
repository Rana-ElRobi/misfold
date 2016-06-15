class CreateRelationshipneighbors < ActiveRecord::Migration
  def change
    create_table :relationshipneighbors do |t|
      t.string :neighbor

      t.timestamps null: false
    end
  end
end
