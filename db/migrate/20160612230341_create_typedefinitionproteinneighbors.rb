class CreateTypedefinitionproteinneighbors < ActiveRecord::Migration
  def change
    create_table :typedefinitionproteinneighbors do |t|
      t.string :neighbor

      t.timestamps null: false
    end
  end
end
