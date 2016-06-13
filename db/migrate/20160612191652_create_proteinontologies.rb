class CreateProteinontologies < ActiveRecord::Migration
  def change
    create_table :proteinontologies do |t|
      t.string :prid
      t.string :name
      t.string :definition
      t.string :comment
      
      t.string :namespace
      
      t.boolean :is_obsolete

      t.timestamps null: false
    end
  end
end
