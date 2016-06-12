class CreateOrgans < ActiveRecord::Migration
  def change
    create_table :organs do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
