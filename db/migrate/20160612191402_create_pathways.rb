class CreatePathways < ActiveRecord::Migration
  def change
    create_table :pathways do |t|
      t.integer :id
      t.string :url

      t.timestamps null: false
    end
  end
end
