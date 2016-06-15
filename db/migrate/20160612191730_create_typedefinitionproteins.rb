class CreateTypedefinitionproteins < ActiveRecord::Migration
  def change
    create_table :typedefinitionproteins do |t|
      t.string :typedefinitionproteinid
      t.string :name
      
      t.string :synonym
      t.string :definition
      t.string :comment
      t.boolean :is_transitive
      t.boolean :is_obsolete

      t.timestamps null: false
    end
  end
end
