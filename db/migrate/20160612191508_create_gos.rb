class CreateGos < ActiveRecord::Migration
  def change
    create_table :gos do |t|
      t.string :id
      t.string :url
      t.string :description
      t.array :annotations

      t.timestamps null: false
    end
  end
end
