class CreateProteinnames < ActiveRecord::Migration
  def change
    create_table :proteinnames do |t|
      t.string :name
      t.string :type
      t.boolean :isprimary

      t.timestamps null: false
    end
  end
end
