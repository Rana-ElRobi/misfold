class CreateConservedregions < ActiveRecord::Migration
  def change
    create_table :conservedregions do |t|
      t.string :name
      t.integer :score
      t.integer :start
      t.integer :end
      t.string :type

      t.timestamps null: false
    end
  end
end
