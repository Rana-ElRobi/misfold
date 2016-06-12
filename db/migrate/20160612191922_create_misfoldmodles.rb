class CreateMisfoldmodles < ActiveRecord::Migration
  def change
    create_table :misfoldmodles do |t|
      t.integer :misfoldid
      t.string :type
      t.string :refseqm
      t.string :refseqp
      t.string :nuclutidechange
      t.string :molecularconsequence
      t.string :aminoacidechange

      t.timestamps null: false
    end
  end
end
