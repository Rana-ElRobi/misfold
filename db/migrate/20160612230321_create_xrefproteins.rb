class CreateXrefproteins < ActiveRecord::Migration
  def change
    create_table :xrefproteins do |t|
      t.string :xrefname

      t.timestamps null: false
    end
  end
end
