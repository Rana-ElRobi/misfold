class CreateTwodstructureregions < ActiveRecord::Migration
  def change
    create_table :twodstructureregions do |t|
      t.integer :start
      t.integer :end
      t.string :regiontype

      t.timestamps null: false
    end
  end
end
