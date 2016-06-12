class CreatePosttranslationalmodifications < ActiveRecord::Migration
  def change
    create_table :posttranslationalmodifications do |t|
      t.array :keywords
      t.string :description
      t.integer :position
      t.integer :lenght
      t.string :featurekey

      t.timestamps null: false
    end
  end
end
