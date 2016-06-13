class CreatePathways < ActiveRecord::Migration
  def change
    create_table :pathways do |t|
      t.integer :pathwayid
      t.string :pathwayurl

      t.timestamps null: false
    end
  end
end
