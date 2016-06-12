class CreateTypedefinitionproteins < ActiveRecord::Migration
  def change
    create_table :typedefinitionproteins do |t|
      t.string :id
      t.string :name
      t.array :neighbors
      t.string :synonym
      t.string :definition
      t.string :comment
      t.boolean :is_transitive
      t.boolean :is_obsolete

      t.timestamps null: false
    end
  end
end
