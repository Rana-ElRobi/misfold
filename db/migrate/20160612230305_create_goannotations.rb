class CreateGoannotations < ActiveRecord::Migration
  def change
    create_table :goannotations do |t|
      t.string :annotate

      t.timestamps null: false
    end
  end
end
