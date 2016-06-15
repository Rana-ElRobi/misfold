class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :relationshipid
      t.string :name
      t.string :type

      t.timestamps null: false
    end
  end
end
