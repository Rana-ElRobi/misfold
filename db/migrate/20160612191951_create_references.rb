class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.integer :referenceid
      t.string :title
      t.string :url
      t.string :retrievablereference
      t.string :clinicalreference
      t.string :otherresource

      t.timestamps null: false
    end
  end
end
