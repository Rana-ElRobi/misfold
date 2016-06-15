class CreateIsAproteins < ActiveRecord::Migration
  def change
    create_table :is_aproteins do |t|
      t.string :isaproteinid
      t.string :name

      t.timestamps null: false
    end
  end
end
