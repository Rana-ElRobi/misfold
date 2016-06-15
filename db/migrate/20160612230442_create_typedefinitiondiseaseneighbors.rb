class CreateTypedefinitiondiseaseneighbors < ActiveRecord::Migration
  def change
    create_table :typedefinitiondiseaseneighbors do |t|
      t.string :neighbor

      t.timestamps null: false
    end
  end
end
