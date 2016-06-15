class CreateKeywords < ActiveRecord::Migration
  def change
    create_table :keywords do |t|
      t.string :keyname

      t.timestamps null: false
    end
  end
end
