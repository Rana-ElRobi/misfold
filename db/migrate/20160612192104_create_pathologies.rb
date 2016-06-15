class CreatePathologies < ActiveRecord::Migration
  def change
    create_table :pathologies do |t|
      t.string :grosspicture
      t.string :microscopicpicture

      t.timestamps null: false
    end
  end
end
