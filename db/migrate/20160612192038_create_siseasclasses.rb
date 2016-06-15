class CreateSiseasclasses < ActiveRecord::Migration
  def change
    create_table :siseasclasses do |t|
      t.string :diseasclass

      t.timestamps null: false
    end
  end
end
