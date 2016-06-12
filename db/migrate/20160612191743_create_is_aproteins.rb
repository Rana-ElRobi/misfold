class CreateIsAproteins < ActiveRecord::Migration
  def change
    create_table :is_aproteins do |t|
      t.string :id
      t.string :name
      t.array :neighbors

      t.timestamps null: false
    end
  end
end
