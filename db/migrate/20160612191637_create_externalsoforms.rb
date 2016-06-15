class CreateExternalsoforms < ActiveRecord::Migration
  def change
    create_table :externalsoforms do |t|
      t.string :url

      t.timestamps null: false
    end
  end
end
